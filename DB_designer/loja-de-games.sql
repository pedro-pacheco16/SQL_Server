CREATE TABLE [Produtos] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	Descricao varchar(500),
	Console varchar(255) NOT NULL,
	Quantidade int,
	Preco decimal(8,2) NOT NULL,
	Foto varchar(5000) NOT NULL,
	categoriaId bigint NOT NULL,
	UsuarioId integer NOT NULL,
  CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [categoria] (
	id bigint NOT NULL,
	tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Usuario] (
	id bigint NOT NULL,
	nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000),
	DataNascimento date NOT NULL,
  CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [Produtos_fk0] FOREIGN KEY ([categoriaId]) REFERENCES [categoria]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produtos] CHECK CONSTRAINT [Produtos_fk0]
GO
ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [Produtos_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [Usuario]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produtos] CHECK CONSTRAINT [Produtos_fk1]
GO



