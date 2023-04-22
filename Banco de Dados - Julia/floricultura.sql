create database floricultura; 

use floricultura;



create table produtos( 
	id int primary key auto_increment,
    nome VARCHAR(200) not null,
    tipo VARCHAR(80) not null,
    preco int not null,
    quantidade_estoque int not null
);

create table produto_compra( 
    produto_id int,
    compra_id int
);

create table compra( 
	id int primary key auto_increment, 
    data date not null,
    valor int not null
);

create table compra_cliente( 
    produto_id int,
    compra_id int
);

create table cliente( 
	id int primary key auto_increment,
    rg VARCHAR (13) not null,
    nome VARCHAR(200) not null,
    telefone VARCHAR(15) not null,
    endereco VARCHAR(200) not null
);

INSERT INTO produto(nome, tipo, preco, quantidade_estoque) 
VALUE ('Vaso Grande','Cerâmica', '45.50', 5), 
('Vaso Pequeno','Cerâmica', '25.50', 2);

INSERT INTO cliente(rg, nome, telefone, endereco) 
VALUE('45.235.324-52', 'Lucas Tamura', '(14) 99954-5643', 'Avenida Sampaio Vidal'),
('75.665.324-56', 'Antonio Carlos', '(14) 96545-4635', 'Avenida Julio Santos');

INSERT INTO compra(data, valor) VALUE ('2023-04-19', '150.25'), ('2023-04-02', '35.25');
insert into produto_compra (produto_id, compra_id) value (1,1),(1,2),(1,2);
insert into compra_cliente (produto_id, compra_id) value (1,1),(2,2);
