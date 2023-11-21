--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 14:23:27 2023
--
-- Text encoding used: UTF-8
--
-- Results of query:
-- select * from tb_carro
--
BEGIN TRANSACTION;
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (98, 'AKJHKN98JY76539', 'Fiat', 'Fiat Uno', 2000);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (99, 'IKJHKN98JY76539', 'Fiat', 'Fiat Palio', 2010);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (3, 'DKSHKNS8JS76S39', 'VW', 'Fusca 78', 1978);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (10, 'LKIUNS8JS76S39', 'Fiat', 'Fiat 147', 1996);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (7, 'SSIUNS8JS76S39', 'Fiat', 'Fiat 147', 1996);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (6, 'SKIUNS8JS76S39', 'Nissan', 'Versa', 2019);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (2, 'AKIUNS1JS76S39', 'Nissan', 'Versa', 2019);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (4, 'LLLUNS1JS76S39', 'Nissan', 'Versa', 2020);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (1, 'AAAKNS8JS76S39', 'Toyota', 'Corolla XEI', 2023);
INSERT INTO tb_carro (idCarro, classi, marca, modelo, ano) VALUES (5, 'MSLUNS1JS76S39', 'Nissan', 'Frontier', 2022);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
