select c.id_curso, c.nome_curso, count(t.id_turma) total_turmas
	from dbo.Turmas t
	inner join dbo.Cursos c on c.id_curso = t.id_curso
	group by c.id_curso, c.nome_curso

--todos os curos, independente se há ou não turmas
select c.nome_curso, count(t.id_turma) Total_turmas
	from dbo.Turmas t
		right join dbo.Cursos c on c.id_curso = t.id_curso
		group by c.nome_curso

select c.nome_curso, count(t.id_turma) Total_turmas
	from dbo.Turmas t, 
		 dbo.Cursos c
	where 
		c.id_curso = t.id_curso
	group by c.nome_curso

--lista completa de alunos

select c.nome_curso, at.valor, at.valor_desconto,t.data_inicio, t.data_termino,
		 a.nome, a.sexo
	from AlunosxTurmas at
		inner join dbo.Turmas t on t.id_turma = at.id_turma
		inner join dbo.Cursos c on c.id_curso = t.id_curso
		inner join dbo.Alunos a on a.id_aluno = at.id_aluno

--Quantidade de turmas com alunos
select c.nome_curso, t.id_turma, count(1) Total_alunos
	from dbo.Turmas t
		inner join AlunosxTurmas at on at.id_turma = t.id_turma
		inner join Cursos c on c.id_curso = t.id_curso
	group by c.nome_curso, t.id_turma