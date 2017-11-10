 class Resposta(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_aluno = models.ForeignKey(Aluno, models.DO_NOTHING, db_column='id_aluno', blank=True, null=True)
       id_questao = models.ForeignKey(Questao, models.DO_NOTHING, db_column='id_questao', blank=True, null=True)
       data_avaliacao = models.CharField(max_length=10, blank=True, null=True)
       nota = models.DecimalField(max_digits=4, decimal_places=2, blank=True, null=True)
       avaliacao = models.TextField(blank=True, null=True)  # This field type is a guess.
       descricao = models.TextField(blank=True, null=True)  # This field type is a guess.
       data_de_envio = models.CharField(max_length=10, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Resposta'