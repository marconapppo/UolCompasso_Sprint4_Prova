CREATE DATABASE prova_exer01;
use prova_exer01;

create table tipo_cliente (
id int,
descricao varchar(50),
constraint PK_TIPO_CLIENTE primary key (id));

create table cliente (
id int,
nome varchar(50),
idade int,
tp_cliente int,
endereco varchar(150),
constraint PK_CLIENTE primary key (id),
constraint FK_TP_CLIENTE foreign key (tp_cliente) references tipo_cliente (id));


create table dependente (
id int,
nome varchar(50),
idade int,
id_cliente int,
constraint PK_CLIENTE primary key (id),
constraint FK_CLIENTE foreign key (id_cliente) references cliente (id));

insert into tipo_cliente values (1, 'NOVO');
insert into tipo_cliente values (2, 'FIDELIZADO');
insert into tipo_cliente values (3, 'PROBLEMÁTICO');


INSERT INTO CLIENTE VALUES (1, 'JOÃO', 30, 1, 'RUA ABC');

INSERT INTO CLIENTE VALUES (2, 'PAULO', 32, 2, 'RUA 123');
INSERT INTO CLIENTE VALUES (3, 'JOSÉ', 40, 2, 'RUA HJY');
INSERT INTO CLIENTE VALUES (4, 'MARIA', 27, 1, 'RUA AAA');
INSERT INTO CLIENTE VALUES (5, 'CLAUDIA', 28, 1, 'RUA KKK');
INSERT INTO CLIENTE VALUES (6, 'MARIANA', 22, 2, 'RUA LLL');
INSERT INTO CLIENTE VALUES (7, 'JULIANA', 30, 2, 'RUA OOO');

INSERT INTO DEPENDENTE VALUES (1, 'JOÃOZINHO', 12, 1);
INSERT INTO DEPENDENTE VALUES (2, 'MARIAZINHA', 10, 1);

INSERT INTO DEPENDENTE VALUES (3, 'PAULINHO', 12, 2);
INSERT INTO DEPENDENTE VALUES (4, 'JOAQUINA', 10, 2);

INSERT INTO DEPENDENTE VALUES (5, 'PAULINHO', 12, 3);

INSERT INTO DEPENDENTE VALUES (6, 'ZEZINHO', 8, 4);


SELECT * FROM CLIENTE;
SELECT * FROM DEPENDENTE;
SELECT * FROM TIPO_CLIENTE;

#1 - Listar nome do dependente, idade do dependente, nome do cliente, idade do cliente para todos os clientes que possuam tp_cliente como 'FIDELIZADO'.
SELECT D.NOME, D.IDADE, C.NOME, C.IDADE FROM CLIENTE C
LEFT JOIN DEPENDENTE D ON D.ID_CLIENTE = C.ID
INNER JOIN TIPO_CLIENTE TP ON TP.ID = C.TP_CLIENTE
WHERE TP.DESCRICAO LIKE 'FIDELIZADO';

#2 - Listar Nome e Id de todos os clientes que não possuam dependente.
SELECT DISTINCT C.NOME, C.ID FROM CLIENTE C
LEFT JOIN DEPENDENTE D ON D.ID_CLIENTE = C.ID
WHERE D.NOME IS NULL;

#3 - Listar todos os dependentes que possuam um cliente que, em seu nome tenha a substring 'AR'. EX: Nesse caso seriam todos os dependentes da 'MARIA'.
SELECT D.NOME FROM CLIENTE C
INNER JOIN DEPENDENTE D ON D.ID_CLIENTE = C.ID
WHERE C.NOME like '%AR%';
