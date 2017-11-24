USE LMS;
go



INSERT INTO Curso(sigla_curso , nome_curso )
	VALUES	('ADM' ,'Administra��o'),
			('ADS' , 'An�lise e Desenvolvimento de Sistemas'),
			('BD' , 'Banco de Dados'),
			('GTI', 'Gest�o da Tecnologia da Informa��o'),
			('JD', 'Jogos Digitais'),
			('PG' , 'Processos Gerenciais'),
			('PM', 'Produ��o Multim�dia'),
			('RC', 'Redes de Computadores'),
			('SI', 'Sistemas de Informa��o');


INSERT INTO Aluno (ra_aluno, nome_aluno, email_aluno, celular_aluno, id_curso)
	
	VALUES	('17001','Lucas Gomes','Lucas@hotmail.com','11985619611',1),
			('17002','Andr� Sousa','Andre@hotmail.com','11973871148',1),
			('17003','Lucas Lavor','Lavor@hotmail.com','11948020012',1),
			('17004','Evandro Ferraz','Evandro@hotmail.com','11947151591',1),
			('17005','Eduardo Correia','Edu@hotmail.com','11986847425',1),

			('17006','Mariana Fagundes','Mari@hotmail.com','11984860555',2),
			('17007','Gabriel Alves Pereira','Gabriel@hotmail.com','11949693508',2),
			('17008','Andr� Pereira','AndreP@hotmail.com','11985871541',2),
			('17009','Lucas dos Santos','Lsantos@hotmail.com','11945080119',2),
			('170010','Evandro Santana','Evandro.santana@hotmail.com','11943151585',2),

			('170011','Eduardo Barbosa','Edub@hotmail.com','11987845423',3),
			('170012','Mariana da Silva','Mari.s@hotmail.com','11958860578',3),
			('170013','Gabriel Pereira Santos','Gabriel.pereira@hotmail.com','11987693512',3),
			('170014','Lucas Lopes','Lucas1@hotmail.com','11956819321',3),
			('170015','Anderson da Silva','polga@hotmail.com','11978919657',3),

			('170016','Jose Lucca','jose@hotmail.com','11987745896',4),
			('170017','Giovana Forte','gi@hotmail.com','11932569878',4),
			('170018','Mikaela Arcangion','mika@hotmail.com','11984783256',4),
			('170019','Pedro Henrique','pe@hotmail.com','11912547891',4),
			('170020','Henrique Santos','henrique@hotmail.com','11945986574',4),

			('170021','Lucca Porpeta','lucca@hotmail.com','11978987584',5),
			('170022','Rael Aklop','rael@hotmail.com','11912365875',5),
			('170023','Michael akbar','michael@hotmail.com','11914578965',5),
			('170024','Gabriel Henrique','ga@hotmail.com','11978541239',5),
			('170025','Eliel dos Santos','eliel@hotmail.com','11985412369',5),

			('170026','Marcia Aparecida','marcia2@hotmail.com','11969852147',6),
			('170027','Ana Lopes','analopes@hotmail.com','11978413514',6),
			('170028','Gilberto Tavares','gtavares@hotmail.com','11932568741',6),
			('170029','Gilvan dos Santos','gilvan@hotmail.com','11978543698',6),
			('170030','Junior Rocha','jurocha@hotmail.com','11925478965',6),

			('170031','Eliane Souza','eliane@hotmail.com','11978925835',7),
			('170032','Vanesa Araujo','v@hotmail.com','11956987412',7),
			('170033','Marcelo Correa','marceloc@hotmail.com','11978963589',7),
			('170034','Renato Costa','rec@hotmail.com','11945896325',7),
			('170035','Rafael Silva','ras@hotmail.com','11958741259',7),

			('170036','Yuri Batista','yuri@hotmail.com','11955874512',8),
			('170037','Caio Batista','caioo@hotmail.com','11956984125',8),
			('170038','Andressa Rodrigues','dessa@hotmail.com','11965235874',8),
			('170039','Alana Moura','amoura@hotmail.com','11925147896',8),
			('170040','Agnaron Varanda','agnaron@hotmail.com','11969874585',8),

			('170041','Alexandre Paixao','ale@hotmail.com','11974114745',9),
			('170042','Aline Longuinho','alinel@hotmail.com','11985423698',9),
			('170043','Alice Ribeiro','alicer@hotmail.com','11955874147',9),
			('170044','Andre Kido','dekido@hotmail.com','11999658741',9),
			('170045','Andre Martins','martins.andre@hotmail.com','11945998562',9);
			


INSERT INTO  Disciplina(nome_disciplina, carga_horaria_disciplina, teoria_disciplina, pratica_disciplina, ementa_disciplina, competencias_disciplina,
						habilidades_disciplina, conteudo_disciplina, bibliografia_basica_disciplina, bibliografia_complementar_disciplina)
	
	VALUES	('Linguagem de Programa��o I', 90, 040, 050,
	'Conceitos e objetivos. Gerar  um programa : programa��o Java, tecnica de refinamentos , decompor um problema.',
	 'Realizar a cria��o de um programa ',
	 'Cria��o de um programa em linguagem Java',
	 'Introdu��o e t�cnicas da Linguagem de Programa��o I',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programa��o padr�o ANSI. Editora Campus, 1990.',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programa��o padr�o ANSI. Editora Campus, 1990.'),

	 ('Fundamentos de Banco de Dados', 90, 040, 050, 
	 'Conceitos e objetivos: Dominio fundamentos B.D e Modelagem: fundamentos de banco de dados e como colocar em pratica eles.',
	 'Realizar de projetos de B.D', 
	 'Elabora��o de Projetos L�gico de B.D',
	 'Introdu��o a Fundamentos de Banco de Dados',
	 ' KORTH, H. F.; SILBERSCHATZ, A.; SUDARSHAN, S.. Sistema de Banco de Dados. 5a ed., Campus, 2006.',
	 'DATE, C. J.. Introdu��o a Sistemas de Banco de Dados. Elsevier Editora, 2004.'),

	 ('Comunica��o e Express�o' , 90, 040,050, 'Conceitos e objetivos:
	 A L�ngua Portuguesa como meio de express�o e comunica��o na ci�ncia.Familiarizar os alunos com aspectos da L�ngua Portuguesa',
	 'Redjir textos com os princ�pios de coes�o',
	 'Elabora��o de textos objetivos, concisos e claros',
	 'Introdu��o a Comunica��o e Express�o',
	 'FIORIN, J. L.; SAVIOLI, F. P. Para entender o Texto: Leitura e Reda��o. Editora Atica, S�o Paulo, 1995.',
	 'LARA, G. M. P. Introdu��o ao Texto T�cnico e Cientifico (apostila). Editora UFMG, Belo Horizonte, 2005.'),

	 ('Matem�tica Aplicada' , 90, 040,050, 'Conceitos e objetivos:
	 Conhecer os conceitos fundamentais de l�gica formal.Dominar os m�todos matem�ticos',
	 'Realizar opera��es de an�lise de conjuntos de dados',
	 'Subsidiar o profissional de inform�tica no entendimento e programa��o de sistemas que envolvam c�lculos.',
	 'Introdu��o a Matem�tica Aplicada',
	 'BAUDOIN, Margaret E. et all. Reader�s Choice. Michigan. Michigan Press, 1984.',
	 'GLENDINNING, Eric H. & McEwAN, John. Basic English for Computing. Oxford. Oxford University
	  Press, 1999'),

	  ('Tecnologia Web', 90, 040,050, 'Conceitos e objetivos:
	  conhecer e dominar as principais etapas para a constru��o e publica��o de um site para a web',
	  ' Estudo de HTML/XHTML,CSS E JavaScript',
	  ' Realiza��o de cria��o de sites Webs',
	  'Introdu��o a Tecnologia Web',
	  'Amaral, A., Montardo, S., Recuero, R. Blogs.com. Estudos sobre blogs e comunica��o., SP, Momento Editorial, 2009.',
	  'Bruno, F. Rastros digitais sob a perspectiva da teoria ator-rede. Revista Famecos, v. 19, n. 3, p. 681, 2012.');

 

INSERT INTO  Professor (ra_professor , apelido_professor, nome_professor , email_professor , celular_professor)
	
	
	VALUES	(18001, 'Japa' , 'Takai', 'takai@hotmail.com', '11987654321'),
			(18002, 'Z� ' , 'Joz�' , 'joze@hotmail.com',  '11912345678'),
			(18003, 'Lu' ,  'Luciana','luciana@hotmail.com', '11954322987'),
			(18004, 'Carlon' , 'Carlos', 'carlos@hotmail.com', '11967895142'),
			(18005, ' Edu', 'Alexandre' , 'ale@hotmail.com', '11964299176'),
			(18006, ' Henrique', 'Henrique' , 'he33@hotmail.com', '11974123698'),
			(18007, ' Juliano', 'Juliano' , 'ju67@hotmail.com', '11987542589'),
			(18008, ' Pedro', 'Pedro' , 'pedro12@hotmail.com', '11974124578'),
			(18009, ' Vanessa', 'Vanessa' , 'vanessa.p@hotmail.com', '11954547874');




INSERT INTO   GradeCurricular(id_curso, ano_grade_curricular, semestre_grade_curricular)
	
	VALUES	(1, 2017, '1'),
			(1, 2017, '2'),
			(2, 2018, '1'),
			(2, 2018, '2'),
			(3, 2019, '1'),
			(3, 2019, '2'),
			(4, 2020, '1'),
			(4, 2020, '2'),
			(5, 2021, '1'),
			(5, 2021, '2'),
			(6, 2022, '1'),
			(6, 2022, '2'),
			(7, 2023, '1'),
			(7, 2023, '2'),
			(8, 2024, '1'),
			(8, 2024, '2'),
			(9, 2025, '1'),
			(9, 2025, '2');
			

INSERT INTO  Periodo(id_grade, numero_periodo)
	VALUES	(1,1),
			(1,2),
			(2,1),
			(2,2),
			(3,1),
			(3,2),
			(4,1),
			(4,2),
			(5,1),
			(5,2),
			(6,1),
			(6,2),
			(7,1),
			(7,2),
			(8,1),
			(8,2),
			(9,1),
			(9,2);



INSERT INTO  PeriodoDisciplina(id_periodo, id_disciplina)
	VALUES
		(1,5),
		(3,4),
		(5,3),
		(7,2),
		(9,1);


INSERT INTO  DisciplinaOfertada(id_disciplina, ano_disciplina_ofertada, semestre_disciplina_ofertada)
VALUES

	(1, 2018, '2'),
	(2, 2018, '1'),
	(3, 2017, '1'),
	(4 , 2017, '2'),
	(5 , 2017, '1');



INSERT INTO  Turma(id_disciplinaofertada, id_professor, turno_turma)
VALUES
( 2, 3, 'Noturno'),
( 1, 4, 'Noturno'),
( 3, 5, 'Matutino'),
( 4, 6, 'Noturno'),
( 5, 7, 'matutino');



INSERT INTO  CursoTurma(id_curso, id_turma)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,2),
(7,3),
(8,1),
(9,5);




INSERT INTO  Questao (id_turma, numero_questao ,descricao_questao ,data_limite_entrega_questao)
VALUES
(1, 1, 'Conceito de  Linguagem de programa��o :','2017-11-17'),
(2, 1, 'Conceito de Fundamentos de Banco de Dados :',  '2017-11-20'),
(3, 1, 'Conceito de  Comunica��o e Express�o :','2017-11-21'),
(4, 1, 'Conceito de Matem�tica Aplicada:', '2017-11-22'),
(5, 1, 'Conceito de Tecnoligia Web', '2017-11-23');





INSERT INTO  ArquivosQuestao(arquivo_arquivos_questao)
VALUES
(' Redja um texto sobre o que � para voc� Linguagem de programa��o. E o que ser� util .'),
(' Redja um texto sobre o que � para voc� Fundamentos de Banco de Dados. E o que ser� util .'),
(' Redja um texto sobre o que � para voc� Comunica��o e Express�o. E o que ser� util .'),
(' Redja um texto sobre o que � para voc� Matem�tica Aplicada. E o que ser� util .'),
(' Redja um texto sobre o que � para voc� Tecnoligia Web. E o que ser� util .');



 


INSERT INTO  Matricula(id_aluno, id_turma)
VALUES
(1,1),
(2,5),
(3,4),
(4,3),
(5,2),
(6,1),
(7,5);





INSERT INTO  Resposta(id_aluno, data_avaliacao_resposta, nota_resposta, avaliacao_resposta, descricao_resposta, data_de_envio_resposta)
VALUES
(1,  '2017-11-17', 08.00, 'Avalia��o Bimestral', 'Conceito de  Linguagem de programa��o', '2017-12-02'),
(2, '2017-11-20', 07.30, 'Avalia��o Bimestral', 'Conceito de Fundamentos de Banco de Dados', '2017-12-02'),
(3,  '2017-11-21', 10.00, 'Avalia��o Bimestral', 'Conceito de  Comunica��o e Express�o ', '2017-12-02'),
(4, '2017-11-22', 04.00, 'Avalia��o Bimestral', 'Conceito de Matem�tica Aplicada', '2017-12-02'),
(5,   '2017-11-23', 02.50, 'Avalia��o Bimestral', 'Conceito de Tecnologia Web', '2017-12-02');	






INSERT INTO  ArquivosResposta( arquivo_arquivos_respostas)
VALUES
( 'Uma linguagem de programa��o � um m�todo padronizado para comunicar instru��es para um computador.
 � um conjunto de regras sint�ticas e sem�nticas usadas para definir um programa de computador. 
 Linguagens de programa��o podem ser usadas para expressar algoritmos com precis�o.'),
 
( 'J� um sistema de gerenciamento de banco de dados (SGBD) � um software que possui recursos
  capazes de manipular as informa��es do banco de dados e interagir com o usu�rio.Por �ltimo, 
 temos que conceituar um sistema de banco de dados como o conjunto de quatro 
 componentes b�sicos: dados, hardware, software e usu�rios.'),

('Comunica��o � uma palavra derivada do termo latino "communicare", que significa "partilhar, 
 participar algo, tornar comum". Atrav�s da comunica��o, os seres humanos
  e os animais partilham diferentes informa��es entre si, tornando o ato de comunicar 
  uma atividade essencial para a vida em sociedade.'),

('Tais aplica��es incluem c�lculo num�rico, matem�tica voltada a engenharia, programa��o linear, 
  otimiza��o, modelagem cont�nua, biomatem�tica e bioinform�tica, teoria da informa��o, 
  teoria dos jogos, probabilidade e estat�stica, matem�tica financeira, criptografia, 
  combinat�ria e at� mesmo geometria finita at� certo '),

('O termo Web 2.0 surgiu, pela primeira vez, em outubro de 2004, durante uma �confer�ncia de id�ias�, 
  entre a O�Reilly Media e a MediaLive International, ambas empresas produtoras de eventos, confer�ncias e 
  conte�dos relacionados principalmente �s tecnologias da informa��o. Os objetivos dos organizadores
  deste evento eram analisar as recentes caracter�sticas da rede, reconhecer tend�ncias, e prever as poss�veis
  inova��es que iriam prevalecer no mundo virtual nos pr�ximos anos.');













