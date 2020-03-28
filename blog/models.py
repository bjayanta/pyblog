from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse

# from ckeditor.fields import RichTextField
from ckeditor_uploader.fields import RichTextUploadingField

class Posts(models.Model):
    title = models.CharField(max_length=100)
    # content = models.TextField()
    # content = RichTextField(blank=True, null=True)
    content = RichTextUploadingField(blank=True, null=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.CharField(max_length=45, default='publish') # publish, pending, private, trash
    created_at = models.DateTimeField(default=timezone.now)
    updated_at = models.DateTimeField(auto_now=True)

    objects = models.Manager()

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse("blog.detail", kwargs={"pk": self.pk})
    
