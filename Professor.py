 class Professor(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       ra = models.IntegerField(unique=True, blank=True, null=True)
       apelido = models.CharField(unique=True, max_length=30, blank=True, null=True)
       nome = models.CharField(max_length=120, blank=True, null=True)
       email = models.CharField(max_length=80, blank=True, null=True)
       celular = models.CharField(max_length=11, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Professor'