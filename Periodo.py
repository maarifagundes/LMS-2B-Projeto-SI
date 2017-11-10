 class Periodo(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_grade = models.ForeignKey(Gradecurricular, models.DO_NOTHING, db_column='id_grade', blank=True, null=True)
       numero = models.SmallIntegerField(unique=True, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Periodo'