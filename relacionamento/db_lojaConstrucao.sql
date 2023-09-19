CREATE DATABASE db_construindo_vida;

USE db_construindo_vida;

CREATE TABLE tb_categorias(
       Id BIGINT IDENTITY (1,1),
	   nome  VARCHAR(255) NOT NULL,
	   marca VARCHAR(255) NOT NULL,
	   PRIMARY KEY(Id)
);

INSERT INTO tb_categorias(nome,marca)
VALUES 
('Elétrica', 'Tramontina'),

('Hidráulica ', 'Amanco'),

('Construção','votorantim' ),

('Revestimento', 'Portinari'),

('pintura', 'luckscolor');

CREATE TABLE tb_produtos(
       Id BIGINT IDENTITY (1,1),
	   nomeProduto VARCHAR(255) NOT NULL,
	   estoque INT,
	   frete DECIMAl (6,2),
	   preco DECIMAl (6,2),
	   PRIMARY KEY(Id),
	   categoria_id BIGINT,
	   FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);


INSERT INTO tb_produtos(nomeProduto, estoque, frete, preco, categoria_id)
VALUES 

('lâmpada', 10, 3.50, 10.99, 1),

('Cano PVC Marrom Soldável 3m 3/4', 20 , 10.50, 16.63, 2 ),

('Cimento 50 kg', 15, 20.50 ,28.90 , 3),

('Porcelanato Portinari York Esmaltado Retificado 87,8X87,7cm Cinza', 200 ,50.00 ,146.14, 4),

('Tinta para parede acrilico fosco completo 18L - Palha', 40, 65.00 ,600, 5),

('tomada 20A', 8,1.50 ,14.95, 1),

('Porcelanato Portinari HD Deck Hard Bold 60x60cm Carvalho', 500, 150.00,194.52, 4 ),

('Tubos Bravo - Conduíte Corrugado em PEAD Amarelo Dn 25-3/4 x 50 m', 3 , 8.50 ,58.27, 2 );


SELECT * FROM tb_produtos WHERE  preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nomeProduto LIKE '%c%';

SELECT tb_produtos.Id, nomeProduto,estoque, frete, preco,nome,marcaFROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.Id = tb_produtos.categoria_id;