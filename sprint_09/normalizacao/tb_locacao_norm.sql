--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 14:35:05 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: tb_locacao_norm
CREATE TABLE tb_locacao_norm (idLocacao INT PRIMARY KEY, idCliente INT REFERENCES tb_cliente (idCliente), idCarro INT REFERENCES tb_carro (idCarro), kmCarro INT, idcombustivel INT REFERENCES tb_combustivel (idCombustivel), dataLocacao NUM, horaLocacao NUM, qtdDiaria INT, vlrDiaria NUM, dataEntrega NUM, horaEntrega NUM, idVendedor INT REFERENCES tb_vendedor (idVendedor));
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (1, 2, 98, 25412, 1, 20150110, '10:00', 2, 100, 20150112, '10:00', 5);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (2, 2, 98, 29450, 1, 20150210, '12:00', 2, 100, 20150212, '12:00', 5);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (3, 3, 99, 20000, 1, 20150213, '12:00', 2, 150, 20150215, '12:00', 6);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (4, 4, 99, 21000, 1, 20150215, '13:00', 5, 150, 20150220, '13:00', 6);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (5, 4, 99, 21700, 1, 20150302, '14:00', 5, 150, 20150307, '14:00', 7);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (6, 6, 3, 121700, 1, 20160302, '14:00', 10, 250, 20160312, '14:00', 8);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (7, 6, 3, 131800, 1, 20160802, '14:00', 10, 250, 20160812, '14:00', 8);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (8, 4, 3, 151800, 1, 20170102, '18:00', 10, 250, 20170112, '18:00', 6);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (9, 4, 3, 152800, 1, 20180102, '18:00', 10, 280, 20180112, '18:00', 6);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (10, 10, 10, 211800, 1, 20180302, '18:00', 10, 50, 20180312, '18:00', 16);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (11, 20, 7, 212800, 1, 20180401, '11:00', 10, 50, 20180411, '11:00', 16);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (12, 20, 6, 21800, 1, 20200401, '11:00', 10, 150, 20200411, '11:00', 16);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (13, 22, 2, 10000, 2, 20220501, '8:00', 20, 150, 20220521, '18:00', 30);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (14, 22, 2, 20000, 2, 20220601, '8:00', 20, 150, 20220621, '18:00', 30);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (15, 22, 2, 30000, 2, 20220701, '8:00', 20, 150, 20220721, '18:00', 30);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (16, 22, 2, 40000, 2, 20220801, '8:00', 20, 150, 20220721, '18:00', 30);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (17, 23, 4, 55000, 2, 20220901, '8:00', 20, 150, 20220921, '18:00', 31);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (18, 23, 4, 56000, 2, 20221001, '8:00', 20, 150, 20221021, '18:00', 31);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (19, 23, 4, 58000, 2, 20221101, '8:00', 20, 150, 20221121, '18:00', 31);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (20, 5, 1, 1800, 3, 20230102, '18:00', 10, 880, 20230112, '18:00', 16);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (21, 5, 1, 8500, 3, 20230115, '18:00', 10, 880, 20230125, '18:00', 16);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (22, 26, 5, 28000, 4, 20230125, '8:00', 5, 600, 20230130, '18:00', 32);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (23, 26, 5, 38000, 4, 20230131, '8:00', 5, 600, 20230205, '18:00', 32);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (24, 26, 5, 48000, 4, 20230206, '8:00', 5, 600, 20230211, '18:00', 32);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (25, 26, 5, 68000, 4, 20230212, '8:00', 5, 600, 20230217, '18:00', 32);
INSERT INTO tb_locacao_norm (idLocacao, idCliente, idCarro, kmCarro, idcombustivel, dataLocacao, horaLocacao, qtdDiaria, vlrDiaria, dataEntrega, horaEntrega, idVendedor) VALUES (26, 26, 5, 78000, 4, 20230218, '8:00', 1, 600, 20230219, '18:00', 32);

-- Index: sqlite_autoindex_tb_locacao_norm_1
CREATE UNIQUE INDEX sqlite_autoindex_tb_locacao_norm_1 ON tb_locacao_norm (idLocacao COLLATE BINARY);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
