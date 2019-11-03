CREATE DATABASE RADIX
GO

USE RADIX
GO

CREATE TABLE Vendedor(
vendedor_id int IDENTITY (1,1) NOT NULL,
vendedor_nome VARCHAR(100),
CONSTRAINT PK_vendedor_id PRIMARY KEY NONCLUSTERED (vendedor_id)
)
GO

CREATE TABLE Venda(
venda_id int IDENTITY (1,1) NOT NULL,
vendedor_id int NOT NULL FOREIGN KEY REFERENCES Vendedor(vendedor_id),
venda_data date NOT NULL,
venda_valor decimal (18,0) NOT NULL,
CONSTRAINT PK_venda_id PRIMARY KEY NONCLUSTERED (venda_id)
)
GO

INSERT INTO [dbo].[Vendedor] VALUES
('Rafael'),
('Joao'),
('Maria')
GO

INSERT INTO [dbo].[Venda] VALUES
(1,'2015-09-05',1000),
(2,'2015-09-10',1200),
(3,'2015-09-20',1500),
(1,'2016-01-10',2000),
(2,'2016-01-05',1700),
(3,'2016-01-15',2100),
(1,'2016-04-20',1000),
(2,'2016-04-22',900),
(3,'2016-04-25',1500),
(1,'2016-08-05',2500),
(2,'2016-08-12',1600),
(3,'2016-08-20',2200),
(1,'2016-12-05',600),
(2,'2016-12-10',800),
(3,'2016-12-15',1200),
(1,'2017-03-01',2200),
(2,'2017-03-10',1900),
(3,'2017-03-15',1500)
GO
