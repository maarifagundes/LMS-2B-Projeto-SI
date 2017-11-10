class Turma(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_disciplinaofertada = models.ForeignKey(Disciplinaofertada, models.DO_NOTHING, db_column='id_disciplinaofertada', blank=True, null=True)
       id_turma = models.CharField(unique=True, max_length=1, blank=True, null=True)
       turno = models.CharField(max_length=15, blank=True, null=True)
       id_professor = models.ForeignKey(Professor, models.DO_NOTHING, db_column='id_professor', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Turma'