from django.db import models
from django.contrib.auth.models import User
from PIL import Image

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    # fields
    phone = models.CharField(max_length=15)
    image = models.ImageField(default='default.jpg', upload_to='avatar')

    objects = models.Manager()

    def __str__(self):
        return f'{self.user.username} profile'

    def save(self):
        super().save()
        
        img = Image.open(self.image.path)

        if img.height > 300 or img.width > 300:
            outputSize = (300, 300)

            img.thumbnail(outputSize)
            img.save(self.image.path)