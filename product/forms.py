from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserChangeForm
from product.models import UserProfileInfo, Product

class UserForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput())

    class Meta():
        model = User
        fields = ('username', 'email', 'password')

class UserProfileInfoForm(forms.ModelForm):
    class Meta():
        model = UserProfileInfo
        fields = ('name', 'portfolio_site', 'profile_pic', 'address', 'city', 'country')

class EditProfileForm(UserChangeForm):

    class Meta():
        model = User
        fields = (
            'email',
            'first_name',
            'last_name',
            
        )

class ProfileChangeForm(UserChangeForm):

    class Meta():
        model = UserProfileInfo
        fields = ('name', 'portfolio_site', 'address', 'city', 'country')


class ProductForm(forms.ModelForm):
    class Meta():
        model = Product
        fields = ('categories', 'title', 'description', 'image', 'price', 'pub_date')
