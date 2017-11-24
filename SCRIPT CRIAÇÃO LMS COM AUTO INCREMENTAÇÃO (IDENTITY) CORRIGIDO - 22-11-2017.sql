CREATE DATABASE LMS;

GO

USE LMS

GO

CREATE TABLE Curso (

	id SMALLINT IDENTITY,
	sigla_curso VARCHAR(5),
	nome_curso VARCHAR(50),
	CONSTRAINT pkidcurso PRIMARY KEY(id),
	CONSTRAINT uqsiglacurso UNIQUE(sigla_curso),
	CONSTRAINT uqnomecurso UNIQUE(nome_curso)
);

CREATE TABLE Aluno (
	
	id INT IDENTITY,
	ra_aluno INT,
	nome_aluno VARCHAR(120),
	email_aluno VARCHAR(80),
	celular_aluno CHAR(11),
	id_curso SMALLINT,
	CONSTRAINT pkidaluno PRIMARY KEY (id),
	CONSTRAINT uqraaluno UNIQUE (ra_aluno),
	CONSTRAINT fkid_curso FOREIGN KEY (id_curso)
	REFERENCES Curso (id)
);

CREATE TABLE Disciplina (

	id SMALLINT IDENTITY,
	nome_disciplina VARCHAR(240),
	carga_horaria_disciplina TINYINT,
	teoria_disciplina DECIMAL(3),
	pratica_disciplina DECIMAL(3),
	ementa_disciplina TEXT,
	competencias_disciplina TEXT,
	habilidades_disciplina TEXT,
	conteudo_disciplina TEXT,
	bibliografia_basica_disciplina TEXT,
	bibliografia_complementar_disciplina TEXT,
	CONSTRAINT pkiddisciplina PRIMARY KEY (id),
	CONSTRAINT uqnomedisciplina UNIQUE (nome_disciplina)
);

CREATE TABLE Professor (

	id SMALLINT IDENTITY,
	ra_professor INT,
	apelido_professor VARCHAR(30),
	nome_professor VARCHAR(120),
	email_professor VARCHAR(80),
	celular_professor CHAR(11),
	CONSTRAINT pkraprofessor PRIMARY KEY (id),
	CONSTRAINT uqraprofessor UNIQUE (ra_professor),
	CONSTRAINT uqapelidoprofessor UNIQUE (apelido_professor)
);

CREATE TABLE GradeCurricular (
	
	id SMALLINT IDENTITY,
	id_curso SMALLINT,
	ano_grade_curricular SMALLINT,
	semestre_grade_curricular CHAR(1),
	CONSTRAINT pkidgrade PRIMARY KEY (id),
	CONSTRAINT fkid_cursograde FOREIGN KEY (id_curso)
	REFERENCES Curso (id),
	CONSTRAINT uqanograde UNIQUE (ano_grade_curricular, id_curso, semestre_grade_curricular),

);


CREATE TABLE Periodo (

	id SMALLINT IDENTITY,
	id_grade SMALLINT,
	numero_periodo TINYINT,
	CONSTRAINT pkidperiodo PRIMARY KEY (id),
	CONSTRAINT fkid_gradeperiodo FOREIGN KEY (id_grade)
	REFERENCES GradeCurricular (id),
	CONSTRAINT uqnumeroperiodo UNIQUE (id_grade, numero_periodo)

);

CREATE TABLE PeriodoDisciplina (

	id SMALLINT IDENTITY,
	id_periodo SMALLINT,
	id_disciplina SMALLINT,
	CONSTRAINT pkidperiododisciplina PRIMARY KEY (id),
	CONSTRAINT fkid_periododisciplina FOREIGN KEY (id_periodo)
	REFERENCES Periodo (id),
	CONSTRAINT fkid_disciplinaperiodo FOREIGN KEY (id_disciplina)
	REFERENCES Disciplina (id)

);


CREATE TABLE DisciplinaOfertada (

	id SMALLINT IDENTITY,
	id_disciplina SMALLINT,
	ano_disciplina_ofertada SMALLINT,
	semestre_disciplina_ofertada CHAR(1),
	CONSTRAINT pkiddisciplinaofertada PRIMARY KEY (id),
	CONSTRAINT fkid_disciplinaofertada FOREIGN KEY (id_disciplina)
	REFERENCES Disciplina (id),
	CONSTRAINT uqanodisciplinaofertada UNIQUE (id_disciplina, ano_disciplina_ofertada, semestre_disciplina_ofertada),

);

CREATE TABLE Turma (

	id SMALLINT IDENTITY,
	id_disciplinaofertada SMALLINT,
	id_turma CHAR(1),
	turno_turma VARCHAR(15),
	id_professor SMALLINT,
	CONSTRAINT pkidturma PRIMARY KEY (id),
	CONSTRAINT fkid_do FOREIGN KEY (id_disciplinaofertada)
	REFERENCES DisciplinaOfertada (id),
	CONSTRAINT uqturma UNIQUE (id_disciplinaofertada, id_turma, id_professor),
	CONSTRAINT fkid_professorturma FOREIGN KEY (id_professor)
	REFERENCES Professor (id)

);


CREATE TABLE CursoTurma (

	id SMALLINT IDENTITY,
	id_turma SMALLINT,
	id_curso SMALLINT,
	CONSTRAINT pkidcursoturma PRIMARY KEY (id),
	CONSTRAINT fkturmacurso FOREIGN KEY (id_turma)
	REFERENCES Turma (id),
 	CONSTRAINT fkid_cursoturma FOREIGN KEY (id_curso)
	REFERENCES Curso (id)

);

CREATE TABLE Questao (

   	id SMALLINT IDENTITY,
   	id_turma SMALLINT,
   	numero_questao INT,
   	data_limite_entrega_questao DATE,
   	descricao_questao TEXT,
   	data DATE,
   	CONSTRAINT pkidquestao PRIMARY KEY (id),
   	CONSTRAINT fkturmaquestao FOREIGN KEY (id_turma)
   	REFERENCES Turma (id),
   	CONSTRAINT uqnumeroquestao UNIQUE (id_turma, numero_questao)

);

CREATE TABLE ArquivosQuestao (

   	id SMALLINT IDENTITY,
   	id_questao SMALLINT,
   	arquivo_arquivos_questao VARCHAR(500),
   	CONSTRAINT pkidarquivosquestao PRIMARY KEY (id),
   	CONSTRAINT fkquestaoarquivos FOREIGN KEY (id_questao)
   	REFERENCES Questao (id),
   	CONSTRAINT uqarquivosquestao UNIQUE (id_questao, arquivo_arquivos_questao)
 
);

CREATE TABLE Matricula (

   	id SMALLINT IDENTITY,
   	id_aluno INT,
   	id_turma SMALLINT,
   	CONSTRAINT pkidmatricula PRIMARY KEY (id),
   	CONSTRAINT fkalunomatricula FOREIGN KEY (id_aluno)
   	REFERENCES Aluno (id),
   	CONSTRAINT fkturmamatricula FOREIGN KEY (id_turma)
   	REFERENCES Turma (id)

);

CREATE TABLE Resposta (

	id SMALLINT IDENTITY,
	id_aluno INT,
	id_questao SMALLINT,
	data_avaliacao_resposta DATE,
	nota_resposta  DECIMAL(4,2),
	avaliacao_resposta  TEXT,
	descricao_resposta  TEXT,
	data_de_envio_resposta  DATE,
	CONSTRAINT pkidresposta PRIMARY KEY (id),
	CONSTRAINT fkalunoresposta FOREIGN KEY (id_aluno)
	REFERENCES Aluno (id),
	CONSTRAINT fkquestaoresposta FOREIGN KEY (id_questao)
	REFERENCES Questao (id)

);

CREATE TABLE ArquivosResposta (

	id SMALLINT IDENTITY,
	id_resposta SMALLINT,
	arquivo_arquivos_respostas VARCHAR(500),
	CONSTRAINT pkidarquivosresposta PRIMARY KEY (id),
	CONSTRAINT fkrespostaarquivos FOREIGN KEY (id_resposta)
	REFERENCES Resposta (id),
	CONSTRAINT uqarquivoarquivosresposta UNIQUE (id_resposta, arquivo_arquivos_respostas )

);