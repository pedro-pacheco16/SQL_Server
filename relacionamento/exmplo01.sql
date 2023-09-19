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

-- Insere dados na tabela tb_categorias