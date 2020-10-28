select a. *
	from Alunos a 
  where a.nome = 'Thiago silva'

-- > maior
-- < menor
-- >= maior ou igual
-- <= menor ou igual
-- <> diferente
-- = igual

select a. *
	from Alunos a 
  where a.data_nascimento >= '10/12/1889'

select a. *
	from Alunos a 
  where a.sexo = 'M'

select a. *
	from Alunos a 
  where a.sexo = 'm'  
  and a.data_nascimento >= '01/01/1989'
  and a.id_aluno > 7


select a.nome, a.sexo, YEAR(a.data_nascimento) ano 
	from Alunos a 
  where a.sexo = 'm'  
  and a.data_nascimento >= '01/01/1989'
  and a.id_aluno > 7

select * 
	from AlunosxTurmas

select at. * 
	from AlunosxTurmas at
	where at.valor > 500

select id_aluno, at.valor * at.valor_desconto as desconto 
	from AlunosxTurmas at
	where at.valor > 500

select id_aluno, FLOOR(at.valor * at.valor_desconto) as desconto 
	from AlunosxTurmas at
	where at.valor_desconto > 0
	and at.valor > 500

-- joins (juntar ou unir)
select c.nome_curso, t.data_inicio, t.data_termino,
	FLOOR(at.valor) valor_bruto, floor((at.valor * at.valor_desconto)) as desconto,
	FLOOR(at.valor - (at.valor * at.valor_desconto)) as Valor_liquido
	from AlunosxTurmas at, Turmas t, Cursos c
  where at.id_turma = t.id_turma
  and t.id_curso = c.id_curso
