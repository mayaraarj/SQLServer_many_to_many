CREATE DATABASE Catalogo;

CREATE TABLE FILME

(id_filme int primary key identity not null,
nome_filme varchar (100) not null,
data_lancamento int,
duracao int 
);

CREATE TABLE Ator
(id_ator int primary key identity not null,
nome_ator varchar(100),
sobrenome_ator varchar (100)
);

insert into FILME (nome_filme, data_lancamento, duracao) values ('Thor: Amor e Trovão', 2022, 120),('O Homem do Norte', 2022, 120),('O Homem nas Trevas', 2016, 88);

insert into Ator (nome_ator, sobrenome_ator)values('Stephen','Lang'),('Jane','Levy'),('Dylan','Minnette'),('Daniel','Zavatto'),('Natalie','Portman'),('Christian','Bale'),('Chris','Hemsworth'),('Matt','Damon'),('Russel','Crowe'),('Anya','Taylor-Joy'),('Alexander','Skarsgård'),('Willem','Dafoe'),('Nicole','Kidman'),('Ethan','Hawke');


--Relacione as duas tabelas Filme e Ator em uma FK.
--Crie uma tabela Filme_Ator

CREATE TABLE Filme_Ator
(id int primary key identity,
id_filme int,
id_ator int,
CONSTRAINT fk_id_filme FOREIGN KEY (id_filme) REFERENCES FILME (id_filme),
CONSTRAINT fk_id_ator FOREIGN KEY (id_ator) REFERENCES Ator (id_ator),
);

select nome_filme, data_lancamento from FILME order by data_lancamento desc;

select nome_filme from FILME order by nome_filme asc;

select nome_ator, sobrenome_ator from Ator order by nome_ator asc;