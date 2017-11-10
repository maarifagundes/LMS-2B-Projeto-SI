class Questao(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_turma = models.ForeignKey('Turma', models.DO_NOTHING, db_column='id_turma', blank=True, null=True)
       numero = models.IntegerField(unique=True, blank=True, null=True)
       data_limite_entrega = models.CharField(max_length=10, blank=True, null=True)
       descricao = models.TextField(blank=True, null=True)  # This field type is a guess.
       data = models.CharField(max_length=10, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Questao'