CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola(
     Id BIGINT IDENTITY(1,1),
	 Nome VARCHAR(255) NOT NULL,
	 DataNascimento DATE,
	 Sala VARCHAR(255) NOT NULL ,
	 Nota DECIMAL (5,1),
	 RA VARCHAR(255) NOT NULL,
	 PRIMARY KEY(Id)
);

INSERT INTO tb_escola
(Nome, DataNascimento, Sala ,Nota, RA)
VALUES
('Pedro','2004 - 08 - 10', '6°A',5,'1000'),
('Luiz','2004 - 03 - 10', '6°A',10,'1001'),
('Maria','2004 - 02 - 5', '6°A',8,'1002'),
('Antoin','2004 - 07 - 11', '6°A',3,'1003'),
('Marcos','2004 - 05 - 9', '6°A',4,'1004'),
('Laura','2004 - 12 - 15', '6°A',6,'1005'),
('Estela','2004 - 09 - 25', '6°A',9.5,'1006'),
('Marta','2004 - 10 - 23', '6°A',7.5,'1007');

SELECT * FROM tb_escola WHERE Nota > 7;
SELECT * FROM tb_escola WHERE Nota < 7;


UPDATE tb_escola SET Nota =  6.5  WHERE Id = 6;

SELECT * FROM tb_escola;

