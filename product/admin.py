from django.contrib import admin
from product.models import Categories, Product, UserProfileInfo

# Register your models here.

admin.site.register(UserProfileInfo)
admin.site.register(Categories)
admin.site.register(Product)
