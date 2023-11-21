--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 14:35:32 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: tb_vendedor
CREATE TABLE tb_vendedor (idVendedor int PRIMARY KEY, nome varchar (15), sexo smallint, estado varchar (40));
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (5, 'Vendedor cinco', 0, 'São Paulo');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (6, 'Vendedora seis', 1, 'São Paulo');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (7, 'Vendedora sete', 1, 'Rio de Janeiro');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (8, 'Vendedora oito', 1, 'Minas Gerais');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (16, 'Vendedor dezesseis', 0, 'Amazonas');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (30, 'Vendedor trinta', 0, 'Rio Grande do Sul');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (31, 'Vendedor trinta e um', 0, 'Ceará');
INSERT INTO tb_vendedor (idVendedor, nome, sexo, estado) VALUES (32, 'Vendedora trinta e dois', 1, 'Mato Grosso do Sul');

-- Index: sqlite_autoindex_tb_vendedor_1
CREATE UNIQUE INDEX sqlite_autoindex_tb_vendedor_1 ON tb_vendedor (idVendedor COLLATE BINARY);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
