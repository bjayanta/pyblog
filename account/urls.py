from django.urls import path
from django.contrib.auth import views as authViews

from . import views

urlpatterns = [
    path('', views.Signin.as_view(), name='account.signin'),
    path('signout/', views.Signout.as_view(), name='account.signout'),
    path('signup/', views.Signup.as_view(), name='account.signup'),
    path('activate/<uidb64>/<token>', views.Activation.as_view(), name='account.activate'),

    path('reset_password/', authViews.PasswordResetView.as_view(template_name='password-reset.html'), name='reset_password'),
    path('reset_password_sent/', authViews.PasswordResetDoneView.as_view(template_name='password-reset-done.html'), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', authViews.PasswordResetConfirmView.as_view(template_name='password-reset-form.html'), name='password_reset_confirm'),
    path('password-reset-complete/', authViews.PasswordResetCompleteView.as_view(template_name='password-reset-complete.html'), name='password_reset_complete'),

    path('profile/', views.Profile.as_view(), name='account.profile'),
]