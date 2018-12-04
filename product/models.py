import datetime
from django.contrib.auth.models import User
from django.db import models
from django.utils import timezone


class UserProfileInfo(models.Model):

    user = models.OneToOneField(User, on_delete=models.CASCADE)

    #additional
    name = models.CharField(max_length=30, default="")
    address = models.CharField(max_length=50, default="")
    city = models.CharField(max_length=60, default="")
    state_province = models.CharField(max_length=30, default="")
    country = models.CharField(max_length=50, default="")

    portfolio_site = models.URLField(blank=True)

    profile_pic = models.ImageField(upload_to='profile_pics', blank=True)

    def __str__(self):
        return self.user.username

class Categories(models.Model):
    name = models.CharField(max_length=100)
    tagline = models.TextField()

    def __str__(self):
        return self.name

class Product(models.Model):
    categories = models.ForeignKey(Categories, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    description = models.TextField()
    image = models.FileField()
    price = models.IntegerField()
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return self.title

    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)
