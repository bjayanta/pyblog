from django.shortcuts import render
from django.views import View
from django.shortcuts import HttpResponse
from .models import Posts

# Create your views here.
class Home(View):
    context = {
        'title': 'home',
        'meta': '',
        'posts': Posts.objects.all(),
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