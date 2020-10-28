create table Alunos
(
	id_aluno int primary key not null,
	nome varchar(200) not null,
	data_nascimento date not null,
	sexo varchar(1) not null, --M para Masculino ou F para Feminino
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null,
);



alter table Alunos
	add constraint fk_Turmas foreign key (id_aluno) references Turmas (id_turma);

alter table Alunos
	drop constraint fk_turmas;

--drop table Alunos;

create table Situacao
(
	id_situacao int primary key not null,
	situacao varchar(25) not null,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

create table Cursos
(
	id_curso int primary key not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
	
);

drop table Cursos;

create table Turmas
(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2) not null,
	desconto numeric(3,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

alter table Turmas
	add constraint fk_Alunos foreign key (id_aluno) references Alunos (id_aluno);

alter table Turmas
	add constraint fk_Cursos foreign key (id_curso) references Cursos (id_curso);

create table Registro_Presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

alter table Registro_Presenca
	add constraint fk_TurmasRP foreign key (id_turma) references Turmas (id_turma);

alter table Registro_Presenca
	add constraint fk_AlunosRP foreign key (id_aluno) references Alunos (id_aluno);

alter table Registro_Presenca
	add constraint fk_SituacaoRP foreign key (id_situacao) references Situacao (id_situacao);




/*
drop table Turmas;
drop table Situacao;
drop table Registro_Presenca;
drop table Cursos;
drop table Alunos;
*/