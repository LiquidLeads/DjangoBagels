from django.shortcuts import render
from django.views.generic.base import TemplateView
from django.views.generic.base import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin

# Create your views here.
def index(request):
    print(request.user)
    return render(request, 'index.html', {})

def about(request):
    return render(request, 'about_us.html', {})

def contact(request):
    return render(request, 'contact_us.html', {})

def services(request):
    return render(request, 'services.html', {})

class ClientProfileView(LoginRequiredMixin, TemplateView):
    template_name="accounts/client_profile.html"

class ContractorProfileView(LoginRequiredMixin, TemplateView):
    template_name='accounts/contractor_profile.html'