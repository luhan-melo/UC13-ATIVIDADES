INSERT INTO Usuarios VALUES ('Danox', 'senha123');
INSERT INTO Classes VALUES ('Monge', 'Descricao do Monge');
INSERT INTO Habilidades VALUES('Recuperar a vida');
INSERT INTO Personagens VALUES ('BitBug', 2,2);
INSERT INTO ClassesHabilidades VALUES (2,2), (2,3)

INSERT INTO Usuarios VALUES ('Aphonso', 'senha1234');
INSERT INTO Classes VALUES ('Barbaro', 'Descricao do Barbaro');
INSERT INTO Habilidades VALUES('Lança Mortal'),('Escuro Supremo');
INSERT INTO Personagens VALUES ('DeuBug', 1,1);
INSERT INTO ClassesHabilidades VALUES (1,1), (1,2)




SELECT * FROM Usuarios;
SELECT * FROM Classes;
SELECT * FROM Habilidades;
SELECT * FROM Personagens;
SELECT * FROM ClassesHabilidades;

DELETE FROM Personagens