CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_Colaboradores(
        Id BIGINT IDENTITY (1,1),
		  Nome VARCHAR(255) NOT NULL,
		  Cargo VARCHAR(255) NOT NULL,
		  Salario DECIMAL NOT NULL,
		  DataNascimento DATE,
		  RG VARCHAR(255) NOT NULL,
		  PRIMARY KEY (Id)
);

INSERT INTO tb_Colaboradores
(Nome, Cargo, Salario, DataNascimento, RG)
VALUES
('Pedro', 'Desenvolvedor backend', 5000,'2000-05-16', '554009900'),
('Luiz', 'Eletricista', 1500,'1967-12-11', '565109900'),
('Paulo', 'Mecânico de Usinagem', 1000,'1500-05-16', '554006901'),
('Bia', 'Desenvolvedora backend', 5000,'2005-07-16', '744009423'),
('Léo', 'Desenvolvedor FrontEnd', 1200,'2007-05-16', '653003901');

SELECT * FROM tb_Colaboradores WHERE Salario > 2000;

SELECT * FROM tb_Colaboradores WHERE Salario < 2000;

UPDATE tb_Colaboradores SET Salario= '1800' WHERE Id = 5;

SELECT * FROM tb_Colaboradores;

