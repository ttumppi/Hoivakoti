from django.shortcuts import render, redirect
from .models import Asukkaat
from .models import Sopimus
from .models import Tilaaja
from .models import Palvelut
from .models import Tyontekijat
from .forms import OsoiteForm, TilaajaForm, TyontekijatForm
#kotisivu
def homepage(request):
    return render(request, 'hoivakoti/homepage.html')

#asukkaat sivu
def asukkaat(request):
    asukkaat = Asukkaat.objects.all()
    dict = {'asukkaat':asukkaat}
    return render(request, 'hoivakoti/asukkaat.html', dict)

#sopimus sivu
def sopimus(request):
    sopimus = Sopimus.objects.all()
    dict = {'sopimus':sopimus}
    return render(request, 'hoivakoti/sopimus.html', dict)

#tilaajat sivu
def tilaajat(request):
    tilaajat = Tilaaja.objects.all()
    dict = {'tilaajat':tilaajat}
    return render(request, "hoivakoti/tilaajat.html", dict)
#palvelut sivu
def palvelut(request):
    palvelut = Palvelut.objects.all()
    dict = {'palvelut':palvelut}
    return render(request, "hoivakoti/palvelut.html", dict)

#tyontekija sivu
def tyontekijat(request):
    tyontekijat = Tyontekijat.objects.all()
    dict = {'tyontekijat':tyontekijat}
    return render(request, "hoivakoti/tyontekijat.html", dict)

#tietty sopimus
def open_sopimus(request,sopimus_id):
    sopimus = Sopimus.objects.get(id=sopimus_id)
    osoite = sopimus.osoite
    asujat = sopimus.asujat
    tilaaja = sopimus.tilaaja
    plv_vastaava = sopimus.plv_vastaava
    dict = {'osoite':osoite, 'asujat':asujat, 'tilaaja':tilaaja, 'plv_vastaava':plv_vastaava}
    return render(request, "hoivakoti/open_sopimus.html", dict)

def add_sopimus(request):
    if request.method == 'POST':
        osoite_form = OsoiteForm(request.POST)
        tilaaja_form = TilaajaForm(request.POST)
        tyontekijat_form = TyontekijatForm(request.POST)
        if (osoite_form.is_valid() and tilaaja_form.is_valid()) and tyontekijat_form.is_valid():
            osoite = osoite_form.save(commit=False)
            tilaaja = tilaaja_form.save()
            tyontekijat = tyontekijat_form.save()
            sopimus = Sopimus()
            sopimus.tilaaja = tilaaja
            sopimus.plv_vastaava = tyontekijat
            osoite.id = sopimus
            sopimus.save()
            osoite.save()
            return redirect('hoivakoti:sopimus')
    else:
        osoite_form = OsoiteForm()
        tilaaja_form = TilaajaForm()
        tyontekijat_form = TyontekijatForm()
        dict = {'osoite':osoite_form, 'tilaaja':tilaaja_form, 'tyontekijat':tyontekijat_form}
        return render(request, "hoivakoti/add_sopimus.html", dict)        

