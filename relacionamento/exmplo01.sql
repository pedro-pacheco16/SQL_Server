USE db_quitanda;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY Nome ASC;

SELECT * FROM tb_produtos ORDER BY Preco DESC;

SELECT * FROM tb_produtos WHERE NOT id = 1;

SELECT * FROM tb_produtos WHERE Preco in (5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5 AND 15; --Between entre um numero e outro 

SELECT * FROM tb_produtos WHERE Nome LIKE '%n%'; --procurar palavras com a letra A

SELECT COUNT (*) AS 'NUMERO DE LINHAS' FROM tb_produtos; -- Count realiza a conta da quantidade de linhas

SELECT SUM(Preco)AS 'valor total dos produtos' FROM tb_produtos; -- soma todos os valores da tabela

SELECT AVG(Preco) FROM tb_produtos; -- divide o total pela quantidade de linhas

SELECT MAX(Preco) FROM tb_produtos;

SELECT MIN(Preco) FROM tb_produtos;

--RELACIONAMENTO ENTRE TABELAS

CREATE TABLE tb_categorias(
      Id BIGINT IDENTITY (1,1),
	  Descricao VARCHAR (255) NOT NULL,
	  PRIMARY KEY(Id)

);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (Descricao)VALUES ('Frutas');INSERT INTO tb_categorias (Descricao)VALUES ('Verduras');INSERT INTO tb_categorias (Descricao)VALUES ('Legumes');INSERT INTO tb_categorias (Descricao)VALUES ('Temperos');INSERT INTO tb_categorias (Descricao)VALUES ('Ovos');INSERT INTO tb_categorias (Descricao)VALUES ('outros');DROP TABLE tb_produtos;CREATE TABLE tb_produtos(     Id BIGINT IDENTITY (1,1),	 nome VARCHAR(255) NOT NULL,	 quantidade INT,	 dtvalidade DATE,	 preco DECIMAL (6,2),	 PRIMARY KEY(Id),	 categoria_id BIGINT, -- declaração de chave estrangeira	 FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id));SELECT * FROM tb_produtos;SELECT * FROM tb_categorias;INSERT INTO tb_produtos(nome,quantidade, dtvalidade, preco,categoria_id)values('Abacate', 45, '2023-09-22', 5.25, 1),('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1), ('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2), ('Cebola', 1020, '2022-03-08', 5.00, 3), ('Ovo Branco', 1000, '2022-03-07', 15.00, 5), ('Agrião', 1500, '2022-03-06', 3.00, 2), ('Cenoura', 1800, '2022-03-09', 3.50, 3), ('Pimenta', 1100, '2022-03-15', 10.00, 4), ('Alecrim', 130, '2022-03-10', 5.00, 4), ('Manga', 200, '2022-03-07', 5.49, 1), ('Laranja', 3000, '2022-03-13', 10.00, 1); SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.Id = tb_produtos.categoria_id; SELECT * FROM tb_categorias RIGHT JOIN tb_produtos ON tb_categorias.Id = tb_produtos.categoria_id WHERE nome like '%n%' order by tb_categorias.Id ASC; INSERT INTO tb_produtos  (nome,quantidade, preco) VALUES ('Panela', 1118, 150.80);