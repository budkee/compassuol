--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 14:30:12 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: tb_combustivel
CREATE TABLE tb_combustivel (idCombustivel int PRIMARY KEY, tipo varchar (20));
INSERT INTO tb_combustivel (idCombustivel, tipo) VALUES (1, 'Gasolina');
INSERT INTO tb_combustivel (idCombustivel, tipo) VALUES (2, 'Etanol');
INSERT INTO tb_combustivel (idCombustivel, tipo) VALUES (3, 'Flex');
INSERT INTO tb_combustivel (idCombustivel, tipo) VALUES (4, 'Diesel');

-- Index: sqlite_autoindex_tb_combustivel_1
CREATE UNIQUE INDEX sqlite_autoindex_tb_combustivel_1 ON tb_combustivel (idCombustivel COLLATE BINARY);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
