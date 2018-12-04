from django.urls import path
from django.contrib import admin
from . import views

app_name = 'product'

urlpatterns = [
    path('', views.index, name='index'),
    path('list/<int:pk>', views.ProductList.as_view(), name='list'),
    path('register/', views.register,name='register'),
    path('productpost/', views.productpost,name='productpost'),
    path('user_login/', views.user_login,name='user_login'),
    path('logout/', views.user_logout, name='logout'),
    path('special/', views.special, name='special'),
    path('profile/<int:pk>', views.get_user_profile),
    path('userdetail/<int:pk>', views.get_user_detail, name='userdetail'),
    path('useredit/edit/<int:pk>', views.edit_profile, name= 'useredit'),
    path('change-password/', views.change_password, name='change_password'),
    path('search/', views.search, name='search'),
    path('detail/<int:pk>', views.detail, name='detail')
]
