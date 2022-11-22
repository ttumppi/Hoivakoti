from django.contrib import admin
#Automatically generated models from database
from .models import Asujat
from .models import Tilaajat
from .models import Sopimus
from .models import Palvelut
from .models import Asukkaat
from .models import Tyontekijat


admin.site.register (Asujat)
admin.site.register (Tilaajat)
admin.site.register (Sopimus)
admin.site.register (Palvelut)
admin.site.register (Asukkaat)
admin.site.register (Tyontekijat)

