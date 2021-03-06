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
from django.contrib.auth.mixins import LoginRequiredMixin

from .forms import CreateSignupForm, UserUpdateForm, ProfileUpdateForm
from .utils import generate_token

# Signup or Register view
class Signup(View):
    context = {
        'title': 'signup',
        'meta': '',
    }

    def get(self, request):
        # check authenticated or not
        if request.user.is_authenticated:
            return redirect('blog.home')

        self.context['form'] = CreateSignupForm()

        # view
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
        # check authenticated or not
        if request.user.is_authenticated:
            return redirect('blog.home')

        # render
        return render(request, 'signin.html', self.context)

    def post(self, request):
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)

            # redirect
            if 'next' in request.GET:
                return redirect(request.GET.get('next'))
            else:
                return redirect('blog.home')
        else:
            # flash message
            messages.warning(request, 'Username or Password is incorrect.')

            # view
            return render(request, 'signin.html', status=401, context=self.context)

# Signout view
class Signout(View):
    def get(self, request):
        pass

    def post(self, request):
        logout(request)

        # flash message
        messages.success(request, 'Sign out successfully!')

        # redirect
        return redirect('account.signin')

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

class Profile(LoginRequiredMixin, View):
    context = {
        'title': 'profile',
        'meta': '',
    }

    login_url = '/account/'
    # raise_exception = True  # Raise exception when no access instead of redirect
    # redirect_field_name = 'next'

    def get(self, request):
        # set form
        self.context['userForm'] = UserUpdateForm(instance=request.user)
        self.context['profileForm'] = ProfileUpdateForm(instance=request.user.profile)

        # view
        return render(request, 'profile.html', self.context)

    def post(self, request):
        # set form
        self.context['userForm'] = UserUpdateForm(request.POST, instance=request.user)
        self.context['profileForm'] = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)

        # validation and save
        if self.context['userForm'].is_valid() and self.context['profileForm'].is_valid():
            self.context['userForm'].save()
            self.context['profileForm'].save()

            # flash message
            messages.success(request, f'Your account has been updated!')

            # redirect
            return redirect('account.profile')

        # view
        return render(request, 'profile.html', self.context)
