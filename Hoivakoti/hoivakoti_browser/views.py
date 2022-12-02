from django.shortcuts import render
from .models import Asukkaat
from .models import Sopimus
from .models import Tilaajat
from .models import Palvelut
from .models import Tyontekijat
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
    tilaajat = Tilaajat.objects.all()
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