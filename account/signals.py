from django.db.models.signals import post_save
from django.contrib.auth.models import User
from .models import Profile

def user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)
        print('Profile created!')

post_save.connect(user_profile, sender=User)

# other way
# from django.dispatch import receiver

# @receiver(post_save, sender=User)
# def create_profile(sender, instance, created, **kwargs):
#     if created:
#         Profile.objects.create(user=instance)

# @receiver(post_save, sender=User)
# def save_profile(sender, instance, **kwargs):
#     instance.profile.save()