CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
       Id BIGINT IDENTITY (1,1),
	   NomeClasse VARCHAR(255) NOT NULL,
	   Nivel INT,
	   PRIMARY KEY(Id)
);

INSERT INTO tb_classes (NomeClasse,Nivel)
VALUES 
('Assassino', 2),

('Atirador', 5),

('médico', 1),

('investigador', 10),

('Delegado', 5);

CREATE TABLE tb_personagens(
       Id BIGINT IDENTITY (1,1),
	   Nome VARCHAR(255) NOT NULL,
	   poderAtaque INT,
	   Caracteristica VARCHAR(255)NOT NULL,
	   poderDefesa INT,
	   PRIMARY KEY(Id),
	   classe_id BIGINT,
	   FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);


INSERT INTO tb_personagens (Nome, poderAtaque, caracteristica, poderDefesa, classe_id)
VALUES 

('steve', 2500, 'bravo',1200 , 2),

('Carlos', 500, 'Demoniaco',800, 1 ),

('Harris', 10000, 'compaixão',10000, 3),

('Priscila', 10000 , 'acelerada',10000, 3),

('cavancanti', 6000, 'alegre',1000, 4),

('Telhada', 3000, 'brincalhão',4000, 5),

('capetinha', 5000, 'zombador',8000, 1 ),

('smith', 1500, 'arrogante',1200, 2 );


SELECT * FROM tb_personagens WHERE  poderAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderAtaque BETWEEN  1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%c%';

SELECT tb_personagens.Id, Nome,  poderAtaque, caracteristica, poderDefesa, NomeClasse, NivelFROM tb_personagens INNER JOIN tb_classesON tb_classes.Id = tb_personagens.classe_id;