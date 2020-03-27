from django.shortcuts import render, get_object_or_404
from django.views import View
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.models import User
from django.core.paginator import Paginator

from .models import Posts

# Post Views
class PostListView(ListView):
    model = Posts
    template_name = 'home.html' # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    ordering = ['-created_at']
    paginate_by = 5

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'home'
        context['meta'] = ''

        return context

# Post Views according to author
class UserPostListView(ListView):
    model = Posts
    template_name = 'blog/user_posts.html'
    context_object_name = 'posts'
    paginate_by = 5
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'home'
        context['meta'] = ''

        return context
    
    def get_queryset(self):
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return Posts.objects.filter(author=user).order_by('-created_at')
    

class PostDetailView(DetailView):
    model = Posts

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'detail'
        context['meta'] = ''

        return context

class PostCreateView(LoginRequiredMixin, CreateView):
    model = Posts
    fields = ['title', 'content']
    login_url = '/account/'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'create'
        context['meta'] = ''

        return context

    def form_valid(self, form):
        form.instance.author = self.request.user

        return super().form_valid(form)

class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Posts
    fields = ['title', 'content']
    login_url = '/account/'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'create'
        context['meta'] = ''

        return context

    def form_valid(self, form):
        form.instance.author = self.request.user

        return super().form_valid(form)
    
    def test_func(self):
        post = self.get_object()

        if self.request.user == post.author:
            return True
        
        return False

class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Posts
    login_url = '/account/'
    success_url = '/'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'detail'
        context['meta'] = ''

        return context

    def test_func(self):
        post = self.get_object()

        if self.request.user == post.author:
            return True
        
        return False

# About View
class About(View):
    context = {
        'title': 'about',
        'meta': ''
    }

    def get(self, request):
        return render(request, 'about.html', self.context)