from __future__ import unicode_literals
   
   from django.db import models
   
   
   class Aluno(models.Model):
       id = models.IntegerField(primary_key=True)
       ra = models.IntegerField(unique=True, blank=True, null=True)
       nome = models.CharField(max_length=120, blank=True, null=True)
       email = models.CharField(max_length=80, blank=True, null=True)
       celular = models.CharField(max_length=11, blank=True, null=True)
       id_curso = models.ForeignKey('Curso', models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Aluno'