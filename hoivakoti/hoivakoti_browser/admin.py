from django.contrib import admin
#Automatically generated models from database
from .models import Osoite
from .models import Tilaaja
from .models import Sopimus
from .models import Palvelut
from .models import Asukkaat
from .models import Tyontekijat


admin.site.register (Osoite)
admin.site.register (Tilaaja)
admin.site.register (Sopimus)
admin.site.register (Palvelut)
admin.site.register (Asukkaat)
admin.site.register (Tyontekijat)

