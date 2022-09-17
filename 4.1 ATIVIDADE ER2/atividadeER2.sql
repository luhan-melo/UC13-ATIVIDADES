CREATE DATABASE UC13;

USE UC13;

CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Usuario VARCHAR(150) UNIQUE NOT NULL,
	Senha VARCHAR(255) NOT NULL

)

SELECT * FROM Usuarios

CREATE TABLE Classes
(
	ClasseId INT PRIMARY KEY IDENTITY,
	NomeClasse VARCHAR(150) UNIQUE NOT NULL,
	DescricaoClasse VARCHAR(255)
)


CREATE TABLE Habilidades
(
	HabilidadeId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150) UNIQUE NOT NULL
)



CREATE TABLE Personagens
(
	PersonagemId INT PRIMARY KEY IDENTITY,
	NomePersonagem VARCHAR(10) UNIQUE NOT NULL,
	UsuarioId INT FOREIGN KEY REFERENCES Usuarios(UsuarioId),
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId), 

)


CREATE TABLE ClassesHabilidades
(
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId),
	HabilidadeId INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId),
)

