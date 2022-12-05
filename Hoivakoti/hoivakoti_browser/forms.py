from django import forms

from .models import Osoite, Tilaaja, Tyontekijat, Asukkaat, Palvelut

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
class AsukkaatForm(forms.ModelForm):
    class Meta:
        model = Asukkaat
        fields = ['nimi']
        labels = {'nimi':'Asukkaan nimi'}
class PalveluForm(forms.ModelForm):
    #choices = ()
    #counter = 1
    #for i in Palvelut.objects.all():


    class Meta:
        model = Palvelut
        fields = ['plv_nimi']
        labels = {'plv':'Palvelu'}
        
