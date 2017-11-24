

/*
nome :André Sousa - RA 1700575
nome :Lucas Lavor - RA 1700539
nome :Evandro Ferraz - RA 1700553
nome :Eduardo Correia - RA 1700576
nome :Mariana Fagundes - RA 1701470
nome :Gabriel Alves Pereira - RA 1700547
nome :Lucas Gomes Silva - RA 1700558
*/


USE LMS
GO

/* 1º Lista com nome, email e RA dos alunos matriculados no curso de “SI” */
--ok

SELECT
	nome_aluno, email_aluno , ra_aluno , sigla_curso  
FROM
	Aluno AS A JOIN
	Curso AS C ON(A.ID_CURSO = C.ID)
WHERE 
	sigla_curso = 'SI';

		

/*2° Lista com o nome de disciplinas ofertadas no primeiro semestre de 2018 para o curso de “SI” */

--ok


SELECT 
	nome_disciplina , semestre_disciplina_ofertada , ano_disciplina_ofertada  

FROM
	DisciplinaOfertada as DO JOIN  
	Disciplina as D ON(DO.id_disciplina = D.id) 
		
WHERE
	ano_disciplina_ofertada = 2018 and semestre_disciplina_ofertada = 1;

	

/*6 Lista com: Numero e descrição da questão, nome e RA do aluno que a respondeu, assim como a data da resposta*/

--ok

SELECT 
	numero_questao , descricao_questao , nome_aluno, ra_aluno  , data_limite_entrega_questao

FROM
	 Questao as Q   Join 
	 Aluno as  R ON (Q.numero_questao = R.id )






/*7 Total de professores cadastrados no sistema e quantos destes dão aulas no semestre atual (duas colunas). */
-- ok

SELECT
nome_professor , semestre_disciplina_ofertada
FROM
	 Professor AS P  join 
	  DisciplinaOfertada AS D ON(P.id = D.id_disciplina)


/*8 Total de alunos por curso, ordenados pelo curso que mais tem alunos primeiro. */
--ok

SELECT
	numero_questao , Descricao_questao , id_aluno , data_de_envio_resposta
FROM
	Questao as Q JOIN
	Resposta as R ON(Q.numero_questao =R.id_aluno)








