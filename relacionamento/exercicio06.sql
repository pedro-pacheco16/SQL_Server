CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
       Id BIGINT IDENTITY (1,1),
	   duracao VARCHAR(255) NOT NULL,
	   Nivel VARCHAR(255) NOT NULL,
	   PRIMARY KEY(Id)
);

INSERT INTO tb_categorias(duracao,Nivel)
VALUES 
('média', 'médio'),

('longa', 'Avançado'),

('curta', 'Básico'),

('média', 'técnico'),

('longa', 'proeficiente');

CREATE TABLE tb_cursos(
       Id BIGINT IDENTITY (1,1),
	   trilha VARCHAR(255) NOT NULL,
	   avaliacao DECIMAL (6,2),
	   modalidade VARCHAR(255)NOT NULL,
	   preco INT,
	   PRIMARY KEY(Id),
	   categoria_id BIGINT,
	   FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);


INSERT INTO tb_cursos(trilha, avaliacao, modalidade, preco, categoria_id)
VALUES 

('Back-End', 9.0 , 'Online',1200 , 1),

('Front-End', 10 , 'Presencial',1800, 2 ),

('Devops', 5, 'Presencial',500, 3),

('Mobile', 7.0 , 'semi-presencial',900, 4),

('QA', 10, 'EAD',2500, 5),

('DBA', 8, 'Online',1500, 1),

('Scrum Master', 6, 'Semi-Presencial',2000, 4 ),

('Dev Java', 4 , 'EAD',300, 2 );


SELECT * FROM tb_cursos WHERE  preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN  600 AND 1000;

SELECT * FROM tb_cursos WHERE trilha LIKE '%j%';

SELECT tb_cursos.Id, trilha,avaliacao, modalidade, preco, duracao, NivelFROM tb_cursos INNER JOIN tb_categoriasON tb_categorias.Id = tb_cursos.categoria_id;