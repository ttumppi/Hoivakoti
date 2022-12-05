from django.urls import path

from . import views

app_name = 'hoivakoti'
urlpatterns = [
    #Home page
    path('', views.homepage, name='homepage'),
    path('asukkaat/', views.asukkaat, name='asukkaat'),
    path('sopimus/', views.sopimus, name='sopimus'),
    path('tilaajat/', views.tilaajat, name='tilaajat'),
    path('palvelut/', views.palvelut, name='palvelut'),
    path('tyontekijat/', views.tyontekijat, name='tyontekijat'),
    path('open_sopimus/<int:sopimus_id>/', views.open_sopimus, name='open_sopimus'),
    path('add_sopimus', views.add_sopimus, name='add_sopimus'),
    path('open_osoite/<int:osoite_id>/', views.open_osoite, name='open_osoite'),
    path('add_asukas/<int:osoite_id>/', views.add_asukas, name='add_asukas'),
    path('open_asukas/<int:asukas_id>/', views.open_asukas, name='open_asukas'),
    path('add_asukas_palvelu/<int:asukas_id>/', views.add_asukas_palvelu, name='add_asukas_palvelu'),
]