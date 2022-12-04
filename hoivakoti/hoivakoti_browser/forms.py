from django import forms

from .models import Osoite, Tilaaja, Tyontekijat

class OsoiteForm(forms.ModelForm):
    class Meta:
        model = Osoite
        fields = ['osoite']
        labels = {'osoite': 'osoite'}

class TilaajaForm(forms.ModelForm):
    class Meta:
        model = Tilaaja
        fields = ['nimi']
        labels = {'nimi':'Tilaajan nimi'}

class TyontekijatForm(forms.ModelForm):
    class Meta:
        model = Tyontekijat
        fields = ['nimi']
        labels =  {'nimi':'Tyontekijan nimi'}