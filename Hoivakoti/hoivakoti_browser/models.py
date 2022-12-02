# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Asujat(models.Model):
    asukas = models.ForeignKey('Asukkaat', models.DO_NOTHING, blank=True, null=True)
    plv = models.ForeignKey('Palvelut', models.DO_NOTHING, blank=True, null=True)

    
    class Meta:
        managed = False
        db_table = 'asujat'


class Asukkaat(models.Model):
    nimi = models.CharField(max_length=50, blank=True, null=True)
    def __str__(self):
        return self.nimi
    class Meta:
        managed = False
        db_table = 'asukkaat'


class Palvelut(models.Model):
    plv_nimi = models.CharField(max_length=50, blank=True, null=True)
    kuvaus = models.CharField(max_length=80, blank=True, null=True)
    def __str__(self):
        return self.plv_nimi
    class Meta:
        managed = False
        db_table = 'palvelut'


class Sopimus(models.Model):
    osoite = models.CharField(max_length=50, blank=True, null=True)
    asujat = models.ForeignKey(Asujat, models.DO_NOTHING, blank=True, null=True)
    tilaaja = models.ForeignKey('Tilaajat', models.DO_NOTHING, blank=True, null=True)
    plv_vastaava = models.ForeignKey('Tyontekijat', models.DO_NOTHING, blank=True, null=True)
    def __str__(self):
        return self.osoite
    class Meta:
        managed = False
        db_table = 'sopimus'


class Tilaajat(models.Model):
    nimi = models.CharField(max_length=50, blank=True, null=True)
    def __str__(self):
        return self.nimi
    class Meta:
        managed = False
        db_table = 'tilaajat'


class Tyontekijat(models.Model):
    nimi = models.CharField(max_length=50, blank=True, null=True)
    esimies = models.IntegerField(blank=True, null=True)
    def __str__(self):
        return self.nimi
    class Meta:
        managed = False
        db_table = 'tyontekijat'
