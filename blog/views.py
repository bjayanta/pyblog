from django.shortcuts import render
from django.views import View
from django.shortcuts import HttpResponse

# Create your views here.
class Home(View):
    context = {
        'title': 'home',
        'meta': '',
        'posts': [
            {'author': 'Jayanta', 'title': 'Blog post 1', 'content': 'Content 1', 'date_post': 'August 27, 2018'},
            {'author': 'Robin', 'title': 'Blog post 2', 'content': 'Content 2', 'date_post': 'August 28, 2018'},
            {'author': 'Amor', 'title': 'Blog post 3', 'content': 'Content 3', 'date_post': 'August 29, 2018'},
            {'author': 'Araf', 'title': 'Blog post 4', 'content': 'Content 4', 'date_post': 'August 30, 2018'},
            {'author': 'Baky', 'title': 'Blog post 5', 'content': 'Content 5', 'date_post': 'August 25, 2018'},
        ],
    }

    def get(self, request):
        return render(request, 'home.html', self.context)

class About(View):
    context = {
        'title': 'about',
        'meta': ''
    }

    def get(self, request):
        return render(request, 'about.html', self.context)