from django.urls import path
from . import views

urlpatterns = [
    path('', views.Signin.as_view(), name='account.signin'),
    # path('signout/', views.Signout.as_view(), name='account.signout'),
    path('signup/', views.Signup.as_view(), name='account.signup'),
]