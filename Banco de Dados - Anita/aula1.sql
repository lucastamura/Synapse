CREATE DATABASE pessoas; --criar um banco de dados

USE pessoas; --acessar o banco de dados pessoas


--criar uma tabela
CREATE TABLE saude(
	id INT PRIMARY KEY auto_increment, --definiu que o id é auto incre
    nome VARCHAR(200),
    data_nasc datetime, 
    tipo_sang VARCHAR(3)
);

DESCRIBE SUS;

ALTER TABLE SAUDE ADD CIDADE varchar(45);

ALTER TABLE SAUDE ADD ALERGIA VARCHAR(45) AFTER NOME;
ALTER TABLE SAUDE DROP ALERGIA;
/* PARA COMENTAR*/
ALTER TABLE SAUDE ADD CPF INT FIRST;

ALTER TABLE SAUDE RENAME TO SUS;
ALTER TABLE SUS DROP CPF;

DROP DATABASE PESSOAS;

DESCRIBE DATABASE PESSOAS;