from django.shortcuts import render, redirect
from .models import Asukkaat
from .models import Sopimus
from .models import Tilaaja
from .models import Palvelut
from .models import Tyontekijat
from .models import Osoite
from .models import Palvelukori
from .forms import OsoiteForm, TilaajaForm, TyontekijatForm, AsukkaatForm, PalveluForm
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
    tilaaja_object = sopimus.tilaaja
    tilaaja = Tilaaja.objects.get(id=tilaaja_object.id)
    plv_vastaava_object = sopimus.plv_vastaava
    plv_vastaava = Tyontekijat.objects.get(id=plv_vastaava_object.id)
    osoite = Osoite.objects.get(sopimus=sopimus.id)
    dict = {'osoite':osoite, 'tilaaja':tilaaja, 'plv_vastaava':plv_vastaava}
    return render(request, "hoivakoti/open_sopimus.html", dict)

def add_sopimus(request):
    if request.method == 'POST':
        osoite_form = OsoiteForm(request.POST,prefix='osoite')
        tilaaja_form = TilaajaForm(request.POST,prefix='tilaaja')
        tyontekijat_form = TyontekijatForm(request.POST,prefix='tyontekijat')
        if ((osoite_form.is_valid() and tilaaja_form.is_valid()) and tyontekijat_form.is_valid()):
            osoite = osoite_form.save(commit=False)
            tilaaja = tilaaja_form.save()
            tyontekijat = tyontekijat_form.save()
            sopimus = Sopimus()
            sopimus.tilaaja = tilaaja
            sopimus.plv_vastaava = tyontekijat
            osoite.sopimus = sopimus
            sopimus.save()
            osoite.save()
            return redirect('hoivakoti:sopimus')
    else:
        osoite_form = OsoiteForm(prefix='osoite')
        tilaaja_form = TilaajaForm(prefix='tilaaja')
        tyontekijat_form = TyontekijatForm(prefix='tyontekijat')
        dict = {'osoite':osoite_form, 'tilaaja':tilaaja_form, 'tyontekijat':tyontekijat_form}
        return render(request, "hoivakoti/add_sopimus.html", dict)        

def open_osoite(request, osoite_id):
    osoite = Osoite.objects.get(pk=osoite_id)
    if request.method == 'POST':
        asukas_form = AsukkaatForm(request.POST)
        if asukas_form.is_valid():
            asukas = asukas_form.save(commit=False)
            asukas.osoite = Osoite.objects.get(pk=osoite_id)
            asukas.save()
            return redirect ('hoivakoti:open_osoite', osoite_id)
    asukkaat = osoite.asukkaat_set.all()
    dict = {'asukkaat':asukkaat, 'osoite_id':osoite_id}
    return render (request, "hoivakoti/open_osoite.html", dict)

def add_asukas(request, osoite_id):
    asukasform = AsukkaatForm
    dict = {'asukasform':asukasform, 'osoite_id':osoite_id}
    return render(request, "hoivakoti/add_asukas.html", dict)
def open_asukas(request, asukas_id):
    asukas = Asukkaat.objects.get(id=asukas_id)
    palvelut = asukas.palvelukori_set.all()
    dict = {'asukas':asukas,'palvelut':palvelut}
    return render (request, "hoivakoti/open_asukas.html", dict)
def add_asukas_palvelu(request, asukas_id):
    asukas = Asukkaat.objects.get(id=asukas_id)
    palvelut = Palvelut.objects.all()
    if request.method == 'POST':
        for i in palvelut:
            if i.plv_nimi == request.POST.get('palvelu_select'):
                palvelu = i
                break
        palvelukori = Palvelukori()
        palvelukori.plv = palvelu
        palvelukori.asukas = asukas
        palvelukori.save()
        return redirect ('hoivakoti:open_asukas', asukas_id)
    dict = {'asukas':asukas, 'palvelut':palvelut}
    return render (request, "hoivakoti/add_asukas_palvelu.html", dict)