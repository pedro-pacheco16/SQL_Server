CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
     Id BIGINT IDENTITY(1,1),
	 Nome VARCHAR(255) NOT NULL,
	 Tipo INT,
	 Material VARCHAR(255) NOT NULL ,
	 Tamanho DECIMAL NOT NULL,
	 Preco DECIMAL NOT NULL,
	 PRIMARY KEY(Id)
);

INSERT INTO tb_produtos
(Nome, Tipo, Material,Tamanho, Preco)
VALUES
('Aliança', 2, 'ouro',11,2500),
('gargantilha', 4, 'Prata',45,300),
('corrente', 1, 'Prata',20,1200),
('Aliança', 2, 'Prata',16,180),
('gargantilha', 4, 'ouro',11,450),
('corrente', 1, 'ouro',30,3500),
('gargantilha', 4, 'Prata',25,800),
('Aliança', 2, 'Prata',12,80);

SELECT * FROM tb_produtos WHERE Preco > 500;
SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Preco = 1000 WHERE Id = 7;

SELECT * FROM tb_produtos;

