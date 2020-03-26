from django.urls import path
from . import views

urlpatterns = [
    # post routes 
    path('', views.PostListView.as_view(), name='blog.home'),
    path('post/<int:pk>/', views.PostDetailView.as_view(), name='blog.detail'),
    path('post/create/', views.PostCreateView.as_view(), name='blog.create'),

    # about routes
    path('about/', views.About.as_view(), name='blog.about'),
]