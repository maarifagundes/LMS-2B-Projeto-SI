class Periododisciplina(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_periodo = models.ForeignKey(Periodo, models.DO_NOTHING, db_column='id_periodo', blank=True, null=True)
       id_disciplina = models.ForeignKey(Disciplina, models.DO_NOTHING, db_column='id_disciplina', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'PeriodoDisciplina'