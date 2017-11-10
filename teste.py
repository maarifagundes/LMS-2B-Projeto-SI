
   from __future__ import unicode_literals
   
   from django.db import models
   
   
   class Aluno(models.Model):
       id = models.IntegerField(primary_key=True)
       ra = models.IntegerField(unique=True, blank=True, null=True)
       nome = models.CharField(max_length=120, blank=True, null=True)
       email = models.CharField(max_length=80, blank=True, null=True)
       celular = models.CharField(max_length=11, blank=True, null=True)
       id_curso = models.ForeignKey('Curso', models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Aluno'
   
   
 class Arquivosquestao(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_questao = models.ForeignKey('Questao', models.DO_NOTHING, db_column='id_questao', blank=True, null=True)
       arquivo = models.CharField(unique=True, max_length=500, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'ArquivosQuestao'
   
   
   class Arquivosresposta(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_resposta = models.ForeignKey('Resposta', models.DO_NOTHING, db_column='id_resposta', blank=True, null=True)
       arquivo = models.CharField(unique=True, max_length=500, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'ArquivosResposta'
   
   
   class Curso(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       sigla = models.CharField(unique=True, max_length=5, blank=True, null=True)
       nome = models.CharField(unique=True, max_length=50, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Curso'
   
   
   class Cursoturma(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_turma = models.ForeignKey('Turma', models.DO_NOTHING, db_column='id_turma', blank=True, null=True)
       id_curso = models.ForeignKey(Curso, models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'CursoTurma'
   
   
   class Disciplina(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       nome = models.CharField(unique=True, max_length=240, blank=True, null=True)
       carga_horaria = models.SmallIntegerField(blank=True, null=True)
       teoria = models.DecimalField(max_digits=3, decimal_places=0, blank=True, null=True)
       pratica = models.DecimalField(max_digits=3, decimal_places=0, blank=True, null=True)
       ementa = models.TextField(blank=True, null=True)  # This field type is a guess.
       competencias = models.TextField(blank=True, null=True)  # This field type is a guess.
       habilidades = models.TextField(blank=True, null=True)  # This field type is a guess.
       conteudo = models.TextField(blank=True, null=True)  # This field type is a guess.
       bibliografia_basica = models.TextField(blank=True, null=True)  # This field type is a guess.
       bibliografia_complementar = models.TextField(blank=True, null=True)  # This field type is a guess.
   
       class Meta:
           managed = False
           db_table = 'Disciplina'
   
   
   class Disciplinaofertada(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_disciplina = models.ForeignKey(Disciplina, models.DO_NOTHING, db_column='id_disciplina', blank=True, null=True)
       ano = models.SmallIntegerField(unique=True, blank=True, null=True)
       semestre = models.CharField(unique=True, max_length=1, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'DisciplinaOfertada'
   
   
   class Gradecurricular(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_curso = models.ForeignKey(Curso, models.DO_NOTHING, db_column='id_curso', blank=True, null=True)
       ano = models.SmallIntegerField(unique=True, blank=True, null=True)
       semestre = models.CharField(unique=True, max_length=1, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'GradeCurricular'
   
   
   class Matricula(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_aluno = models.ForeignKey(Aluno, models.DO_NOTHING, db_column='id_aluno', blank=True, null=True)
       id_turma = models.ForeignKey('Turma', models.DO_NOTHING, db_column='id_turma', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Matricula'
   
   
   class Periodo(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_grade = models.ForeignKey(Gradecurricular, models.DO_NOTHING, db_column='id_grade', blank=True, null=True)
       numero = models.SmallIntegerField(unique=True, blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Periodo'
   
   
   class Periododisciplina(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_periodo = models.ForeignKey(Periodo, models.DO_NOTHING, db_column='id_periodo', blank=True, null=True)
       id_disciplina = models.ForeignKey(Disciplina, models.DO_NOTHING, db_column='id_disciplina', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'PeriodoDisciplina'
   
   
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
   
   
   class Turma(models.Model):
       id = models.SmallIntegerField(primary_key=True)
       id_disciplinaofertada = models.ForeignKey(Disciplinaofertada, models.DO_NOTHING, db_column='id_disciplinaofertada', blank=True, null=True)
       id_turma = models.CharField(unique=True, max_length=1, blank=True, null=True)
       turno = models.CharField(max_length=15, blank=True, null=True)
       id_professor = models.ForeignKey(Professor, models.DO_NOTHING, db_column='id_professor', blank=True, null=True)
   
       class Meta:
           managed = False
           db_table = 'Turma'
   
   
   class AuthGroup(models.Model):
       name = models.CharField(unique=True, max_length=80)
   
       class Meta:
           managed = False
           db_table = 'auth_group'
   
   
   class AuthGroupPermissions(models.Model):
       group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
       permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)
   
       class Meta:
           managed = False
           db_table = 'auth_group_permissions'
           unique_together = (('group', 'permission'),)
   
   
   class AuthPermission(models.Model):
       name = models.CharField(max_length=255)
       content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
       codename = models.CharField(max_length=100)
   
       class Meta:
           managed = False
           db_table = 'auth_permission'
           unique_together = (('content_type', 'codename'),)
   
   
   class AuthUser(models.Model):
       password = models.CharField(max_length=128)
       last_login = models.DateTimeField(blank=True, null=True)
       is_superuser = models.BooleanField()
       username = models.CharField(unique=True, max_length=150)
       first_name = models.CharField(max_length=30)
       last_name = models.CharField(max_length=30)
       email = models.CharField(max_length=254)
       is_staff = models.BooleanField()
       is_active = models.BooleanField()
       date_joined = models.DateTimeField()
   
       class Meta:
           managed = False
           db_table = 'auth_user'
   
   
   class AuthUserGroups(models.Model):
       user = models.ForeignKey(AuthUser, models.DO_NOTHING)
       group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
   
       class Meta:
           managed = False
           db_table = 'auth_user_groups'
           unique_together = (('user', 'group'),)
   
   
   class AuthUserUserPermissions(models.Model):
       user = models.ForeignKey(AuthUser, models.DO_NOTHING)
       permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)
   
       class Meta:
           managed = False
           db_table = 'auth_user_user_permissions'
           unique_together = (('user', 'permission'),)
   
   
   class CoreDisciplina(models.Model):
       nome = models.CharField(max_length=50)
       carga_horaria = models.IntegerField()
       professor = models.CharField(max_length=50)
       descricao = models.TextField()
       ativo = models.BooleanField()
       created_date = models.DateTimeField()
   
       class Meta:
           managed = False
           db_table = 'core_disciplina'
   
   
   class CoreMateria(models.Model):
   
       class Meta:
           managed = False
           db_table = 'core_materia'
   
   
   class DjangoAdminLog(models.Model):
       action_time = models.DateTimeField()
       object_id = models.TextField(blank=True, null=True)
       object_repr = models.CharField(max_length=200)
       action_flag = models.SmallIntegerField()
       change_message = models.TextField()
       content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
       user = models.ForeignKey(AuthUser, models.DO_NOTHING)
   
       class Meta:
           managed = False
           db_table = 'django_admin_log'
   
   
   class DjangoContentType(models.Model):
       app_label = models.CharField(max_length=100)
       model = models.CharField(max_length=100)
   
       class Meta:
           managed = False
           db_table = 'django_content_type'
           unique_together = (('app_label', 'model'),)
   
   
   class DjangoMigrations(models.Model):
       app = models.CharField(max_length=255)
       name = models.CharField(max_length=255)
       applied = models.DateTimeField()
   
       class Meta:
           managed = False
           db_table = 'django_migrations'
   
   
   class DjangoSession(models.Model):
       session_key = models.CharField(primary_key=True, max_length=40)
       session_data = models.TextField()
       expire_date = models.DateTimeField()
   
       class Meta:
           managed = False
           db_table = 'django_session'