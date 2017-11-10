 class Gradecurricular(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_curso = models.ForeignKey(Curso, models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
       ano = models.SmallIntegerField(unique=True, blank=True, null=True)
       semestre = models.CharField(unique=True, max_length=1, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'GradeCurricular'