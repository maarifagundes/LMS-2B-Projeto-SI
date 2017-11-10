class Cursoturma(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_turma = models.ForeignKey('Turma', models.DO_NOTHING, db_column='id_turma', blank=True, null=True)
       id_curso = models.ForeignKey(Curso, models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'CursoTurma'