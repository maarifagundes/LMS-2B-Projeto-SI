 class Arquivosresposta(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_resposta = models.ForeignKey('Resposta', models.DO_NOTHING, db_column='id_resposta', blank=True, null=True)
       arquivo = models.CharField(unique=True, max_length=500, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'ArquivosResposta'