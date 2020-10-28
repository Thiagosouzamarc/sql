alter table Turmas
drop constraint fk_alunos

alter table Turmas
drop column id_aluno;

alter table Turmas
drop column valor_turma;

alter table Turmas
drop column desconto;

create table AlunosxTurmas
(
	id_turma int not null,
	id_aluno int not null,
	valor numeric(13,2) not null,
	valor_desconto numeric(3,2),
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

--drop table AlunosxTurmas

alter table AlunosxTurmas
	add constraint fk_turma foreign key (id_turma) references Turmas(id_turma);

alter table AlunosxTurmas
	add constraint fk_aluno foreign key (id_aluno) references Alunos(id_aluno);

insert into Turmas
(id_turma, id_curso, data_inicio, data_termino, data_cadastro, login_cadastro)
values
(1, 1, '17/11/2019', '27/12/2019', GETDATE(), 'ALESS')

insert into AlunosxTurmas
(id_turma, id_aluno, valor, valor_desconto, data_cadastro, login_cadastro)
values
(1, 6, 1200, 0.1, GETDATE(), 'ALESS')

select *from AlunosxTurmas