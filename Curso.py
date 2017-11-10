 class Curso(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       sigla = models.CharField(unique=True, max_length=5, blank=True, null=True)
       nome = models.CharField(unique=True, max_length=50, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Curso'
   