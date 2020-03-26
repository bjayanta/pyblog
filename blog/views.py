from django.shortcuts import render
from django.views import View
from django.views.generic import ListView, DetailView, CreateView
from django.contrib.auth.mixins import LoginRequiredMixin

from .models import Posts

# Post Views
class PostListView(ListView):
    model = Posts
    template_name = 'home.html' # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    ordering = ['-created_at']

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['title'] = 'home'
        context['meta'] = ''

        return context

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

# About View
class About(View):
    context = {
        'title': 'about',
        'meta': ''
    }

    def get(self, request):
        return render(request, 'about.html', self.context)