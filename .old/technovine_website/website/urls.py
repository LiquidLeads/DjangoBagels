from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('home', views.index,name='index'),
    path('About/', views.about,name='about'),
    path('Contact/', views.contact,name='contact'),
    path('Services/', views.services,name='services'),
    path('accounts/ClientProfile',views.ClientProfileView.as_view(), name='client_profile'),
    path('accounts/ContractorProfile',views.ContractorProfileView.as_view(),name='contractor_profile'),


    # Django Client Auth
    path('accounts/ClientLogin', auth_views.LoginView.as_view(template_name="accounts/client_login.html"),name='client login'),
    path('accounts/ClientLogout', auth_views.LogoutView.as_view(),name="client logout"),
    # Django Contractor Auth
    path('accounts/ContractorLogin', auth_views.LoginView.as_view(template_name="accounts/contractor_login.html"),name='contractor login'),
    path('accounts/ContractorLogout', auth_views.LogoutView.as_view(),name="contractor logout"),
]
