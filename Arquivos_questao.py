class Arquivosquestao(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_questao = models.ForeignKey('Questao', models.DO_NOTHING, db_column='id_questao', blank=True, null=True)
       arquivo = models.CharField(unique=True, max_length=500, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'ArquivosQuestao'
   