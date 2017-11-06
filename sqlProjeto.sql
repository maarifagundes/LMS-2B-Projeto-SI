

create table curso(

	sigla varchar(5),
	nome varchar(50),
	CONSTRAINT pk_sigla_curso primary key (sigla),
	CONSTRAINT uk_nome_curso UNIQUE (nome)
	
);

create table grade_curricular(

	sigla_curso varchar(5),
	ano smallint,
	semestre char(1),
	CONSTRAINT pk_ano_grade_curricular PRIMARY KEY (ano),
	CONSTRAINT uq_semestre_grade_curricular UNIQUE (semestre),
	CONSTRAINT fk_sigla_curso_grade_curricular FOREIGN KEY (sigla_curso)references curso(sigla)

);

create table periodo(

	sigla_curso varchar(5),
	ano_grade smallint,
	semestre_grade char(1),
	numero tinyint,
	CONSTRAINT pk_nome_periodo PRIMARY KEY (numero),
	CONSTRAINT fk_sigla_curso_periodo FOREIGN KEY (sigla_curso) references curso(sigla),
	CONSTRAINT fk_ano_grade_periodo FOREIGN KEY (ano_grade) references grade_curricular(ano),
	CONSTRAINT fk_semestre_grade_periodo FOREIGN KEY (semestre_grade) references grade_curricular(semestre)

);

create table disciplina(

	nome varchar (240),
	carga_horaria tinyint,
	teoria decimal (3),
	ementa TEXT,
	compentencias TEXT,
	habilidades TEXT,
	conteundo TEXT,
	bibliografia_basica TEXT,
	bibliografia_complementar TEXT,
	CONSTRAINT pk_nome_disciplina PRIMARY KEY (nome)
);

create table periodo_disciplina(

	sigla_curso varchar(5),
	ano_grade smallint,
	semestre_grade char(1),
	numero_periodo tinyint,
	nome_disciplina varchar (240),
	CONSTRAINT fk_sigla_curso_periodo_disciplina FOREIGN KEY(sigla_curso) references curso(sigla),
	CONSTRAINT fk_ano_grade_periodo_disciplina FOREIGN KEY(ano_grade) references grade_curricular(ano),
	CONSTRAINT fk_semestre_grade_periodo_disciplina FOREIGN KEY (semestre_grade) references grade_curricular(semestre),
	CONSTRAINT fk_numero_periodo_periodo_disciplina FOREIGN KEY (numero_periodo) references periodo(numero),
	CONSTRAINT fk_disciplina_periodo_disciplina FOREIGN KEY (nome_disciplina) references disciplina(nome)

);

create table disciplina_ofertada(

	nome_disciplina varchar(240),
	ano smallint,
	semestre char(1),
	CONSTRAINT pk_ano_disciplina_ofertada PRIMARY KEY (ano),
	CONSTRAINT uq_semestre_disciplina_ofertada UNIQUE(semestre), 
	CONSTRAINT fk_nome_disciplina_disciplina_ofertada FOREIGN KEY (nome_disciplina)references disciplina(nome)
);

create table professor(

	ra int ,
	apelido varchar(30),
	nome varchar(120),
	email varchar(80),
	celular char(11),
	CONSTRAINT pk_ra_professor PRIMARY KEY (ra),
	CONSTRAINT uq_apelido_professor UNIQUE (apelido)

);

create table turma(

	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id char(1),
	turno varchar(15),
	ra_professor int ,
	CONSTRAINT pk_id_turma PRIMARY KEY(id),
	CONSTRAINT fk_ra_professor_turma FOREIGN KEY (ra_professor)references professor(ra),
	CONSTRAINT fk_nome_disciplina_turma FOREIGN KEY (nome_disciplina)references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_turma FOREIGN KEY (ano_ofertado)references disciplina_ofertada(ano),

);



create table curso_turma(

	sigla_curso varchar(5),
	nome_disciplina varchar(240),
	ano_ofertado smallint ,
	semestre_ofertado char(1),
	id_turma char(1),
	CONSTRAINT id_turma_curso_turma FOREIGN KEY (id_turma)references turma(id),
	CONSTRAINT fk_sigla_curso_curso_turma FOREIGN KEY (sigla_curso)references curso(sigla),
	CONSTRAINT fk_nome_disciplina_curso_turma FOREIGN KEY (nome_disciplina)references disciplina (nome),
	CONSTRAINT fk_ano_ofertado_curso_turma FOREIGN KEY (ano_ofertado)references disciplina_ofertada(ano),
	CONSTRAINT fk_semestre_ofertado_curso_turma FOREIGN KEY (semestre_ofertado)references disciplina_ofertada(semestre)
	
);
create table aluno(

	ra int,
	nome varchar(120),
	email varchar(80),
	celular char(11),
	sigla_curso char(2),
	CONSTRAINT  pk_ra_aluno PRIMARY KEY (ra)

);



create table matricula(

	ra_aluno int,
	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char(1),
	CONSTRAINT fk_ra_aluno_matricula FOREIGN KEY (ra_aluno) references aluno(ra),
	CONSTRAINT fk_nome_disciplina_matricula FOREIGN KEY (nome_disciplina) references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_matricula FOREIGN KEY (ano_ofertado) references disciplina_ofertada(ano),
	CONSTRAINT fk_semestre_ofertado_matricula FOREIGN KEY (semestre_ofertado) references disciplina_ofertada(semestre),
	CONSTRAINT fk_id_turma_matricula FOREIGN KEY (id_turma) references turma(id)

);


create table questao(

	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char(1),
	numero int,
	data_limite_entrega date,
	descricao text,
	data_questao date ,
	CONSTRAINT pk_numero_questao PRIMARY KEY (numero),
	CONSTRAINT fk_nome_disciplina_questao FOREIGN KEY (nome_disciplina) references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_questao FOREIGN KEY (ano_ofertado) references disciplina_ofertada(ano),
	CONSTRAINT fk_semestre_ofertado_questao FOREIGN KEY (semestre_ofertado) references disciplina_ofertada(semestre),
	CONSTRAINT fk_id_turma_questao FOREIGN KEY (id_turma) references turma(id)

);


create table resposta(

	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char(1),
	numero_questao int,
	ra_aluno int,
	data_avaliacao date,
	nota decimal(4,2),
	avaliacao text,
	descricao text,
	data_de_envio date,
	CONSTRAINT pk_ra_aluno_resposta PRIMARY KEY (ra_aluno),
	CONSTRAINT fk_nome_disciplina_resposta FOREIGN KEY (nome_disciplina) references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_resposta FOREIGN KEY (ano_ofertado) references disciplina_ofertada(ano),
	CONSTRAINT fk_semestre_ofertado_resposta FOREIGN KEY (semestre_ofertado) references disciplina_ofertada(semestre),
	CONSTRAINT fk_id_turma_resposta FOREIGN KEY (id_turma) references turma(id),
	CONSTRAINT fk_numero_questao_resposta FOREIGN KEY (numero_questao) references questao(numero)

);


create table arquivos_resposta(

	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char(1),
	numero_questao int,
	ra_aluno int,
	arquivo varchar(500),
	CONSTRAINT pk_arquivo_arquivos_resposta PRIMARY KEY (arquivo),
	CONSTRAINT fk_nome_disciplina_arquivos_resposta FOREIGN KEY (nome_disciplina) references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_arquivos_resposta FOREIGN KEY (ano_ofertado) references disciplina_ofertada(ano),
	CONSTRAINT fk_semestre_ofertado_arquivos_resposta FOREIGN KEY (semestre_ofertado) references disciplina_ofertada(semestre),
	CONSTRAINT fk_id_turma_arquivos_resposta FOREIGN KEY (id_turma) references turma(id),
	CONSTRAINT fk_numero_questao_arquivos_resposta FOREIGN KEY (numero_questao) references questao (numero),

);



 create table arquivos_questao(
 
	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char(1),
	numero_questao int,
	arquivo varchar(500),
	CONSTRAINT pk_arquivo_arquivos_questao PRIMARY KEY (arquivo),
	CONSTRAINT fk_nome_disciplina_arquivos_questao FOREIGN KEY (nome_disciplina) references disciplina(nome),
	CONSTRAINT fk_ano_ofertado_arquivos_questao FOREIGN KEY (ano_ofertado) references disciplina_ofertada(ano), 
	CONSTRAINT fk_semestre_ofertado_arquivos_questao FOREIGN KEY (semestre_ofertado) references disciplina_ofertada(semestre), 
	CONSTRAINT fk_id_turma_arquivos_questao FOREIGN KEY (id_turma) references turma(id),
	CONSTRAINT fk_numero_questao_arquivos_questao FOREIGN KEY (numero_questao) references questao(numero) 
 
);