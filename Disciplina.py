 class Disciplina(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       nome = models.CharField(unique=True, max_length=240, blank=True, null=True)
       carga_horaria = models.SmallIntegerField(blank=True, null=True)
       teoria = models.DecimalField(max_digits=3, decimal_places=0, blank=True, null=True)
       pratica = models.DecimalField(max_digits=3, decimal_places=0, blank=True, null=True)
       ementa = models.TextField(blank=True, null=True)  # This field type is a guess.
       competencias = models.TextField(blank=True, null=True)  # This field type is a guess.
       habilidades = models.TextField(blank=True, null=True)  # This field type is a guess.
       conteudo = models.TextField(blank=True, null=True)  # This field type is a guess.
       bibliografia_basica = models.TextField(blank=True, null=True)  # This field type is a guess.
       bibliografia_complementar = models.TextField(blank=True, null=True)  # This field type is a guess.
   
       class Meta:
           managed = False
           db_table = 'Disciplina'
   