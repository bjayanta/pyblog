from django.db import models
from django.contrib.auth.models import User

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    # fields
    phone = models.CharField(max_length=15)
    image = models.ImageField(default='default.png', upload_to='avatar')

    objects = models.Manager()

    # def __str__(self):
        # return f'{self.user.username} profile'