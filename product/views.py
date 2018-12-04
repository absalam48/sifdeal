from django.shortcuts import render, get_object_or_404
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import redirect
from django.contrib.auth import update_session_auth_hash
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.views import generic
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.mixins import PermissionRequiredMixin

from product.forms import UserForm, UserProfileInfoForm, ProductForm, ProfileChangeForm, EditProfileForm
from product.models import UserProfileInfo, Categories, Product, User
from .filters import ProductFilter

def index(request):
    latest_list = Product.objects.order_by('-pub_date')[:5]
    context = {'latest_list': latest_list}
    return render(request, 'product/index.html', context)



class ProductList(generic.ListView):
    model = Product
    template_name = 'product/list.html'

    def get_context_data(self, **kwargs):
        context = super(ProductList, self).get_context_data(**kwargs)
        context['product_lsit'] =Product.objects.filter(categories_id=self.kwargs.get('pk'))
        return context


def detail(request, pk):
    user = request.user
    product_detail = get_object_or_404(Product, pk=pk)
    return render(request, 'product/detail.html', {'product_detail': product_detail, 'user': user})


@login_required
def special(request):
    return HttpResponse("Your are Logged in, Nice")

@login_required
def user_logout(request):
    logout(request)
    return HttpResponseRedirect(reverse('product:index'))

def register(request):

    registered = False

    if request.method == "POST":
        user_form = UserForm(data=request.POST)
        profile_form = UserProfileInfoForm(data=request.POST)

        if user_form.is_valid() and profile_form.is_valid():
            user = user_form.save()
            user.set_password(user.password)
            user.save()

            profile = profile_form.save(commit=False)
            profile.user = user

            if 'profile_pic' in request.FILES:
                profile.profile_pic = request.FILES['profile_pic']

            profile.save()

            registered = True

        else:
            print(user_form.errors, profile_form.errors)

    else:
        user_form = UserForm()
        profile_form = UserProfileInfoForm()

    return render(request, 'product/register.html',
                            {'user_form':user_form,
                             'profile_form': profile_form,
                              'registered': registered})


def user_login(request):

    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)

        if user:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect(reverse('product:productpost'))

            else:
                print("Account Not ACTIVATE")
        else:
            print("Soemone Tried to login and failed !")
            print("Username: {} and password {}".format(username,password))
            return HttpResponse("invalid login suppiled")
    else:
        return render(request, 'product/login.html',{})

@login_required
def productpost(request):

    form = ProductForm()

    if request.method == "POST":
        form = ProductForm(request.POST, request.FILES)

        if form.is_valid():
            form.save(commit=True)
            return success(request)


        else:
            print("The Form Is Invalid")

    return render(request, 'product/postproduct.html', {'form': form})

def success(request):
    return render(request, 'product/success.html')

def get_user_profile(request, username):
    user = User.objects.get(username=username)
    return render(request, 'product/base.html', {"user":user})

def get_user_detail(request, pk):
    user = User.objects.get(pk=pk)
    profile = UserProfileInfo.objects.get(user_id=pk)
    return render(request, 'product/userdetail.html', {'user':user, 'profile': profile})

def edit_profile(request, pk):
    user = User.objects.get(pk=pk)
    if request.method == 'POST':
        form = EditProfileForm(request.POST, instance=request.user)

        if form.is_valid():
            form.save()
            return success(request)

    else:
        form = EditProfileForm(instance = request.user)
        arg = {'form': form}
        return render(request, 'product/edit_profile.html', arg)


def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(data=request.POST, user=request.user)

        if form.is_valid():
            form.save()
            update_session_auth_hash(request, form.user)
            return success(request)
        else:
            return redirect(reverse('product:change_password'))
    else:
        form = PasswordChangeForm(user=request.user)

        args = {'form': form}
        return render(request, 'product/change_password.html', args)
def search(request):
    product_list = Product.objects.all()
    product_filter = ProductFilter(request.GET, queryset=product_list)
    return render(request, 'product/product_list.html', {'filter': product_filter})