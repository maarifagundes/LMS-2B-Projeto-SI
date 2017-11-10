 class Matricula(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_aluno = models.ForeignKey(Aluno, models.DO_NOTHING, db_column='id_aluno', blank=True, null=True)
       id_turma = models.ForeignKey('Turma', models.DO_NOTHING, db_column='id_turma', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Matricula'