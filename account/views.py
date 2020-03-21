from django.shortcuts import render, redirect
from django.views import View
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages

from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes, force_text, DjangoUnicodeDecodeError
from django.core.mail import EmailMessage
from django.conf import settings

from django.contrib.auth.models import User

from .forms import CreateSignupForm
from .utils import generate_token

# Signup or Register view
class Signup(View):
    context = {
        'title': 'signup',
        'meta': '',
    }

    def get(self, request):
        self.context['form'] = CreateSignupForm()
        return render(request, 'signup.html', self.context)

    def post(self, request):
        self.context['form'] = CreateSignupForm(request.POST)

        # check validations
        if self.context['form'].is_valid():
            user = self.context['form'].save()

            # set active status for the user
            user.refresh_from_db()
            user.is_active = False
            user.save()

            # send email
            EmailMessage(
                'Active your account.',
                # email address config
                render_to_string('activate.html', {
                    'user': user,
                    'domail': get_current_site(request).domain,
                    'uid': urlsafe_base64_encode(force_bytes(user.pk)),
                    'token': generate_token.make_token(user)
                }),
                settings.EMAIL_HOST_USER,
                [user.email],
            ).send()

            email = self.context['form'].cleaned_data.get('email')

            # flash message
            messages.success(request, 'You\'re Almost Done... A verification email was sent to: ' + email + '. Open this email and click the link to activate your account.')
            
            # redirect
            return redirect('account.signin')

        # view
        return render(request, 'signup.html', self.context)

# Signin view
class Signin(View):
    context = {
        'title': 'signin',
        'meta': '',
    }

    def get(self, request):
        return render(request, 'signin.html', self.context)

    def post(self, request):
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)

            # redirect
            return redirect('blog.home')
        else:
            # flash message
            messages.warning(request, 'Username or Password is incorrect.')

            # view
            return render(request, 'signin.html', status=401, context=self.context)

# Activate Account view
class Activation(View):
    def get(self, request, uidb64, token):
        try:
            uid = force_text(urlsafe_base64_decode(uidb64))
            user = User.objects.get(pk=uid)
        except Exception:
            user = None

        if user is not None and generate_token.check_token(user, token):
            user.is_active = True
            user.save()

            messages.success(request, 'Account activated successfully.')

            return redirect('account.signin')
        else:
            return render(request, 'activate_fail.html', status=401)