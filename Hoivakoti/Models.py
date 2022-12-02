# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Asukkaat(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    nimi = models.CharField(max_length=30)
    osoite = models.ForeignKey('Osoite', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'asukkaat'


class Osoite(models.Model):
    id = models.OneToOneField('Sopimus', models.DO_NOTHING, db_column='Id', primary_key=True)  # Field name made lowercase.
    osoite = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'osoite'


class Palvelukori(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    asukas = models.ForeignKey(Asukkaat, models.DO_NOTHING)
    plv = models.ForeignKey('Palvelut', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'palvelukori'


class Palvelut(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    plv_nimi = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'palvelut'


class Sopimus(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    osoite_id = models.IntegerField()
    tilaaja = models.ForeignKey('Tilaaja', models.DO_NOTHING)
    plv_vastaava = models.ForeignKey('Tyontekijat', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'sopimus'


class Tilaaja(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    nimi = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'tilaaja'


class Tyontekijat(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    nimi = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'tyontekijat'
