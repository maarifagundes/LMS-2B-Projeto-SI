from django.db import models
from django.utils import timezone

# Create your models here.

class Disciplina(models.Model):
    nome = models.CharField("Nome da Disciplina", max_length=50)
    carga_horaria = models.IntegerField("Carga Horária")
    professor = models.CharField("Professor da Disciplina", max_length=50)
    descricao = models.TextField("Comentários sobre a Disciplina", blank=True)
    ativo = models.BooleanField("Ativo?", default = True)
    created_date = models.DateTimeField(default=timezone.now)
    
class Materia(models.Model):

    def __str__(self):
        return self.nome
