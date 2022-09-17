USE hr;

--select simples
SELECT * FROM locations;
SELECT * FROM DEPARTMENTS;
SELECT * FROM JOBS;
SELECT * FROM COUNTRIES;

--selecionando colunas

SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES;

--PEGAR APENAS O FIRST_NOME, EMAIL, JOB_ID

SELECT FIRST_NAME, EMAIL, JOB_ID FROM EMPLOYEES;

--apelidar os campos que pegamos
SELECT FIRST_NAME AS "NOME", EMAIL AS "E-MAIL", JOB_ID AS "CODIGO DO CARGO" FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT d.DEPARTMENT_ID AS "ID DO DEPTO", d.DEPARTMENT_NAME AS "NOME DO DEPTO", d.MANAGER_ID FROM DEPARTMENTS d;

--criar um novo banco de dados

CREATE DATABASE BET7FST4;

USE BET7FST4;

--CRIAÇÃO DE TABELAS
CREATE TABLE cadastro
(
nome VARCHAR(30),
sobrenome VARCHAR(30),
salario MONEY,
endereco VARCHAR(30),
dt_cadastro DATE
);

--insert sem informar quais são os campo (precisa passar os valores na ordem em que eles foram criados no banco)
INSERT INTO cadastro VALUES ('MARCELO', 'DINIZ', 1000, 'PIRACEMA 100', SYSDATETIME());

SELECT * FROM cadastro

--insert informando os campos (precisa passar os valores de acordo com a ordem que os campos foram informados)
INSERT INTO cadastro (nome, sobrenome, salario, endereco, dt_cadastro) VALUES ('FERNANDO', 'ROMERO', 2000, 'CORREIA 100', SYSDATETIME());

INSERT INTO cadastro (salario, nome, sobrenome, endereco, dt_cadastro) VALUES (2500, 'CARLOS', 'MARTINS', 'PIAUI 100', SYSDATETIME());

insert into cadastro values ('Miguel','Carmin',4000,'Piaui 100',sysdatetime());
insert into cadastro values ('Camila','Pacheco',8000,'Sao Jorge 84',sysdatetime());
insert into cadastro values ('Marina','Augusto',1400,'Nova Tatuape 100',sysdatetime());
insert into cadastro values ('Roberto','Eduardo',800,'Jurubatuba 505',sysdatetime());
insert into cadastro values ('Eduardo','Gomes',1000,'Estrela 14',sysdatetime());
insert into cadastro values ('Mario','Temer',3500,'Moreira 10',sysdatetime());
insert into cadastro values ('Marcelo','Juracy',7350,'Santa Elvira',sysdatetime());

SELECT * FROM cadastro;
SELECT NOME, SOBRENOME FROM cadastro;

--retornar todos os registros da tabela cadastro, referentes aos funcionários Marina e Eduardo

SELECT NOME, SOBRENOME FROM cadastro WHERE nome IN ('Marina', 'Eduardo');

SELECT * FROM cadastro WHERE nome = 'Marina' OR nome = 'Eduardo';


-- retornar todos os registros da tabela com um calculo de quantos funcionarios ganham em um ano de trabalho. Criar um apelido "anual"
SELECT *, salario * 12 AS "ANUAL" FROM cadastro;

--Selecionar as columas nome e sobrenome da tabela cadastro e simular um aumento no salário de 10%, colocando um apelido na coluna com
--o nome de "aumento"
SELECT nome, sobrenome, salario * 1.1 AS "Aumento" FROM cadastro;

SELECT nome, sobrenome, salario + ((salario*10)/100) AS "Aumento" FROM cadastro;

--Selecionar todos os funcionários que ganham entre 4000 e 5000.
SELECT * FROM cadastro WHERE salario >= 4000 and salario <= 5000;
SELECT * FROM cadastro WHERE salario between 4000 and 5000;

--Selecionar todos os funcionários que possouem o salário maior ou igual a 4000.
SELECT * FROM cadastro WHERE salario >= 4000;

--Selecionar todos os funcionários que possuem a letra "a" no nome
SELECT * FROM cadastro WHERE nome like '%a%';

--Selecionar todos os funcionários que comecem a letra "M" no nome
SELECT * FROM cadastro WHERE nome like 'M%';

--alterar o salario do funcionario Marcelo para 2000.
UPDATE cadastro SET salario = 2000 WHERE nome = 'MARCELO';

--alterar o salario do funcionario Marcelo Diniz para 2500.
UPDATE cadastro SET salario = 2500 WHERE nome = 'MARCELO' and sobrenome = 'DINIZ';

--Voltamos para o banco hr
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=30;
SELECT * FROM DEPARTMENTS;

UPDATE employees SET salary = 10000 WHERE department_id = 60;

UPDATE employees SET salary = salary * 1.1 WHERE department_id = 30;

--voltamos para o banco BET7FST4

--DELETE
select * from cadastro;
DELETE FROM cadastro WHERE nome = 'CARLOS';
DELETE FROM cadastro;

--drop
DROP TABLE cadastro; 
DROP database BET7FST4;

