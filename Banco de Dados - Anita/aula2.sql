create database escola; --criar banco de dados "Ecola"

use escola;  --usar o banco de dados "escola"

create table aluno(  --criar tabela
	Id int primary key auto_increment,
    Nome VARCHAR(200) not null,
    Nascimento datetime, 
    Email varchar(120)
);

describe aluno;  --descrever a tabela aluno

create table curso(  --criar a tabela "curso"
	Id int primary key auto_increment,
    Nome_curso VARCHAR(80) not null
);


create table matricula( --criando uma tabela "matricula"
	Codigo_curso int,  --criar primeiro as variáveis 
    Codigo_aluno int,
	FOREIGN KEY (Codigo_curso) REFERENCES curso (Id), --referenciar os atributos com as chaves estrangeiras
    FOREIGN KEY (Codigo_aluno) REFERENCES aluno (Id)
);

INSERT INTO aluno(Nome, Nascimento, Email) VALUE('Josiel Jardim','1974-10-15 12:45:50', 'josiel@sql.com.br');
INSERT INTO aluno(Nome, Nascimento, Email) VALUE('Ana Maria','1974-10-15 12:45:50', 'ana@sql.com.br'), ('Joao Pedro','1979-09-12 09:09:09', 'joao@sql.com.br');

select * from aluno;  --para vizualizar a tabela

insert into curso (Nome_curso) value ('Medicina'),('Arquitetura'),('Filosofia'),('Informática'),('Jornalismo');

insert into matricula (Codigo_curso, Codigo_aluno) value (1,3); --passar os id's de cada parâmetro
insert into matricula (Codigo_curso, Codigo_aluno) value (2,1);
insert into matricula (Codigo_curso, Codigo_aluno) value (3,2);

select * from aluno order by nome desc; -- ordernar em ordem decrescente a tabela aluno, coluna nome
select * from aluno order by nome ; -- ordernar em ordem crescente a tabela aluno, coluna nome
select nome from aluno; --selecionar a coluna nome da tabela aluno