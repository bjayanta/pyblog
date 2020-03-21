from django.shortcuts import render, redirect
from django.views import View
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages

from .forms import CreateSignupForm

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
