select *
from dbo.Turmas

select *from Cursos

--usando exemplo de query utilizando o nome da tabela
select Turmas. * from Turmas

--selecionar apenas alguns campos da tabela
select id_turma, id_curso, data_inicio, login_cadastro
	from dbo.Turmas

--Utilizar Alias para nome da tabela
select *from dbo.Turmas T

select T. * from dbo.Turmas T

select t. * 
	from dbo.Turmas T

select T.id_turma, t.id_curso, t.data_inicio
	from dbo.Turmas T

--Utilizar nomes personalizados para nossos campos

select T.id_curso as ID, t.id_turma IDT, t.data_inicio as DATA_COMECO
	from dbo.Turmas T 

--Segunda forma

select tt.id_curso IDC, tt.id_turma IDT, tt.data_inicio "DATA COMEÇO" 
	from dbo.Turmas tt