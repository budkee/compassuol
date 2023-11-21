--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 15:43:54 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: tb_carro
DROP TABLE IF EXISTS tb_carro;

CREATE TABLE IF NOT EXISTS tb_carro (
    idCarro INT          PRIMARY KEY,
    classi  VARCHAR (50),
    marca   VARCHAR (80),
    modelo  VARCHAR (80),
    ano     INT
);

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         98,
                         'AKJHKN98JY76539',
                         'Fiat',
                         'Fiat Uno',
                         2000
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         99,
                         'IKJHKN98JY76539',
                         'Fiat',
                         'Fiat Palio',
                         2010
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         3,
                         'DKSHKNS8JS76S39',
                         'VW',
                         'Fusca 78',
                         1978
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         10,
                         'LKIUNS8JS76S39',
                         'Fiat',
                         'Fiat 147',
                         1996
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         7,
                         'SSIUNS8JS76S39',
                         'Fiat',
                         'Fiat 147',
                         1996
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         6,
                         'SKIUNS8JS76S39',
                         'Nissan',
                         'Versa',
                         2019
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         2,
                         'AKIUNS1JS76S39',
                         'Nissan',
                         'Versa',
                         2019
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         4,
                         'LLLUNS1JS76S39',
                         'Nissan',
                         'Versa',
                         2020
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         1,
                         'AAAKNS8JS76S39',
                         'Toyota',
                         'Corolla XEI',
                         2023
                     );

INSERT INTO tb_carro (
                         idCarro,
                         classi,
                         marca,
                         modelo,
                         ano
                     )
                     VALUES (
                         5,
                         'MSLUNS1JS76S39',
                         'Nissan',
                         'Frontier',
                         2022
                     );


-- Table: tb_cliente
DROP TABLE IF EXISTS tb_cliente;

CREATE TABLE IF NOT EXISTS tb_cliente (
    idCliente INT           PRIMARY KEY,
    nome      VARCHAR (100),
    cidade    VARCHAR (40),
    estado    VARCHAR (40),
    pais      VARCHAR (40) 
);

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           2,
                           'Cliente dois',
                           'São Paulo',
                           'São Paulo',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           3,
                           'Cliente tres',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           4,
                           'Cliente quatro',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           6,
                           'Cliente seis',
                           'Belo Horizonte',
                           'Minas Gerais',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           10,
                           'Cliente dez',
                           'Rio Branco',
                           'Acre',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           20,
                           'Cliente vinte',
                           'Macapá',
                           'Amapá',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           22,
                           'Cliente vinte e dois',
                           'Porto Alegre',
                           'Rio Grande do Sul',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           23,
                           'Cliente vinte e tres',
                           'Eusébio',
                           'Ceará',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           5,
                           'Cliente cinco',
                           'Manaus',
                           'Amazonas',
                           'Brasil'
                       );

INSERT INTO tb_cliente (
                           idCliente,
                           nome,
                           cidade,
                           estado,
                           pais
                       )
                       VALUES (
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil'
                       );


-- Table: tb_combustivel
DROP TABLE IF EXISTS tb_combustivel;

CREATE TABLE IF NOT EXISTS tb_combustivel (
    idCombustivel INT          PRIMARY KEY,
    tipo          VARCHAR (20) 
);

INSERT INTO tb_combustivel (
                               idCombustivel,
                               tipo
                           )
                           VALUES (
                               1,
                               'Gasolina'
                           );

INSERT INTO tb_combustivel (
                               idCombustivel,
                               tipo
                           )
                           VALUES (
                               2,
                               'Etanol'
                           );

INSERT INTO tb_combustivel (
                               idCombustivel,
                               tipo
                           )
                           VALUES (
                               3,
                               'Flex'
                           );

INSERT INTO tb_combustivel (
                               idCombustivel,
                               tipo
                           )
                           VALUES (
                               4,
                               'Diesel'
                           );


-- Table: tb_locacao
DROP TABLE IF EXISTS tb_locacao;

CREATE TABLE IF NOT EXISTS tb_locacao (
    idLocacao       INT             PRIMARY KEY,
    idCliente       INT             REFERENCES tb_cliente (idCliente),
    nomeCliente     VARCHAR (100),
    cidadeCliente   VARCHAR (40),
    estadoCliente   VARCHAR (40),
    paisCliente     VARCHAR (40),
    idCarro         INT,
    kmCarro         INT,
    classiCarro     VARCHAR (50),
    marcaCarro      VARCHAR (80),
    modeloCarro     VARCHAR (80),
    anoCarro        INT,
    idcombustivel   INT             REFERENCES tb_combustivel (idCombustivel),
    tipoCombustivel VARCHAR (20),
    dataLocacao     DATETIME,
    horaLocacao     TIME,
    qtdDiaria       INT,
    vlrDiaria       DECIMAL (18, 2),
    dataEntrega     DATE,
    horaEntrega     TIME,
    idVendedor      INT             REFERENCES tb_vendedor (idVendedor),
    nomeVendedor    VARCHAR (15),
    sexoVendedor    SMALLINT,
    estadoVendedor  VARCHAR (40) 
);

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           1,
                           2,
                           'Cliente dois',
                           'São Paulo',
                           'São Paulo',
                           'Brasil',
                           98,
                           25412,
                           'AKJHKN98JY76539',
                           'Fiat',
                           'Fiat Uno',
                           2000,
                           1,
                           'Gasolina',
                           20150110,
                           '10:00',
                           2,
                           100,
                           20150112,
                           '10:00',
                           5,
                           'Vendedor cinco',
                           0,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           2,
                           2,
                           'Cliente dois',
                           'São Paulo',
                           'São Paulo',
                           'Brasil',
                           98,
                           29450,
                           'AKJHKN98JY76539',
                           'Fiat',
                           'Fiat Uno',
                           2000,
                           1,
                           'Gasolina',
                           20150210,
                           '12:00',
                           2,
                           100,
                           20150212,
                           '12:00',
                           5,
                           'Vendedor cinco',
                           0,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           3,
                           3,
                           'Cliente tres',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil',
                           99,
                           20000,
                           'IKJHKN98JY76539',
                           'Fiat',
                           'Fiat Palio',
                           2010,
                           1,
                           'Gasolina',
                           20150213,
                           '12:00',
                           2,
                           150,
                           20150215,
                           '12:00',
                           6,
                           'Vendedora seis',
                           1,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           4,
                           4,
                           'Cliente quatro',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil',
                           99,
                           21000,
                           'IKJHKN98JY76539',
                           'Fiat',
                           'Fiat Palio',
                           2010,
                           1,
                           'Gasolina',
                           20150215,
                           '13:00',
                           5,
                           150,
                           20150220,
                           '13:00',
                           6,
                           'Vendedora seis',
                           1,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           5,
                           4,
                           'Cliente quatro',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil',
                           99,
                           21700,
                           'IKJHKN98JY76539',
                           'Fiat',
                           'Fiat Palio',
                           2010,
                           1,
                           'Gasolina',
                           20150302,
                           '14:00',
                           5,
                           150,
                           20150307,
                           '14:00',
                           7,
                           'Vendedora sete',
                           1,
                           'Rio de Janeiro'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           6,
                           6,
                           'Cliente seis',
                           'Belo Horizonte',
                           'Minas Gerais',
                           'Brasil',
                           3,
                           121700,
                           'DKSHKNS8JS76S39',
                           'VW',
                           'Fusca 78',
                           1978,
                           1,
                           'Gasolina',
                           20160302,
                           '14:00',
                           10,
                           250,
                           20160312,
                           '14:00',
                           8,
                           'Vendedora oito',
                           1,
                           'Minas Gerais'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           7,
                           6,
                           'Cliente seis',
                           'Belo Horizonte',
                           'Minas Gerais',
                           'Brasil',
                           3,
                           131800,
                           'DKSHKNS8JS76S39',
                           'VW',
                           'Fusca 78',
                           1978,
                           1,
                           'Gasolina',
                           20160802,
                           '14:00',
                           10,
                           250,
                           20160812,
                           '14:00',
                           8,
                           'Vendedora oito',
                           1,
                           'Minas Gerais'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           8,
                           4,
                           'Cliente quatro',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil',
                           3,
                           151800,
                           'DKSHKNS8JS76S39',
                           'VW',
                           'Fusca 78',
                           1978,
                           1,
                           'Gasolina',
                           20170102,
                           '18:00',
                           10,
                           250,
                           20170112,
                           '18:00',
                           6,
                           'Vendedora seis',
                           1,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           9,
                           4,
                           'Cliente quatro',
                           'Rio de Janeiro',
                           'Rio de Janeiro',
                           'Brasil',
                           3,
                           152800,
                           'DKSHKNS8JS76S39',
                           'VW',
                           'Fusca 78',
                           1978,
                           1,
                           'Gasolina',
                           20180102,
                           '18:00',
                           10,
                           280,
                           20180112,
                           '18:00',
                           6,
                           'Vendedora seis',
                           1,
                           'São Paulo'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           10,
                           10,
                           'Cliente dez',
                           'Rio Branco',
                           'Acre',
                           'Brasil',
                           10,
                           211800,
                           'LKIUNS8JS76S39',
                           'Fiat',
                           'Fiat 147',
                           1996,
                           1,
                           'Gasolina',
                           20180302,
                           '18:00',
                           10,
                           50,
                           20180312,
                           '18:00',
                           16,
                           'Vendedor dezesseis',
                           0,
                           'Amazonas'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           11,
                           20,
                           'Cliente vinte',
                           'Macapá',
                           'Amapá',
                           'Brasil',
                           7,
                           212800,
                           'SSIUNS8JS76S39',
                           'Fiat',
                           'Fiat 147',
                           1996,
                           1,
                           'Gasolina',
                           20180401,
                           '11:00',
                           10,
                           50,
                           20180411,
                           '11:00',
                           16,
                           'Vendedor dezesseis',
                           0,
                           'Amazonas'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           12,
                           20,
                           'Cliente vinte',
                           'Macapá',
                           'Amapá',
                           'Brasil',
                           6,
                           21800,
                           'SKIUNS8JS76S39',
                           'Nissan',
                           'Versa',
                           2019,
                           1,
                           'Gasolina',
                           20200401,
                           '11:00',
                           10,
                           150,
                           20200411,
                           '11:00',
                           16,
                           'Vendedor dezesseis',
                           0,
                           'Amazonas'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           13,
                           22,
                           'Cliente vinte e dois',
                           'Porto Alegre',
                           'Rio Grande do Sul',
                           'Brasil',
                           2,
                           10000,
                           'AKIUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2019,
                           2,
                           'Etanol',
                           20220501,
                           '8:00',
                           20,
                           150,
                           20220521,
                           '18:00',
                           30,
                           'Vendedor trinta',
                           0,
                           'Rio Grande do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           14,
                           22,
                           'Cliente vinte e dois',
                           'Porto Alegre',
                           'Rio Grande do Sul',
                           'Brasil',
                           2,
                           20000,
                           'AKIUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2019,
                           2,
                           'Etanol',
                           20220601,
                           '8:00',
                           20,
                           150,
                           20220621,
                           '18:00',
                           30,
                           'Vendedor trinta',
                           0,
                           'Rio Grande do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           15,
                           22,
                           'Cliente vinte e dois',
                           'Porto Alegre',
                           'Rio Grande do Sul',
                           'Brasil',
                           2,
                           30000,
                           'AKIUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2019,
                           2,
                           'Etanol',
                           20220701,
                           '8:00',
                           20,
                           150,
                           20220721,
                           '18:00',
                           30,
                           'Vendedor trinta',
                           0,
                           'Rio Grande do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           16,
                           22,
                           'Cliente vinte e dois',
                           'Porto Alegre',
                           'Rio Grande do Sul',
                           'Brasil',
                           2,
                           40000,
                           'AKIUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2019,
                           2,
                           'Etanol',
                           20220801,
                           '8:00',
                           20,
                           150,
                           20220721,
                           '18:00',
                           30,
                           'Vendedor trinta',
                           0,
                           'Rio Grande do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           17,
                           23,
                           'Cliente vinte e tres',
                           'Eusébio',
                           'Ceará',
                           'Brasil',
                           4,
                           55000,
                           'LLLUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2020,
                           2,
                           'Etanol',
                           20220901,
                           '8:00',
                           20,
                           150,
                           20220921,
                           '18:00',
                           31,
                           'Vendedor trinta e um',
                           0,
                           'Ceará'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           18,
                           23,
                           'Cliente vinte e tres',
                           'Eusébio',
                           'Ceará',
                           'Brasil',
                           4,
                           56000,
                           'LLLUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2020,
                           2,
                           'Etanol',
                           20221001,
                           '8:00',
                           20,
                           150,
                           20221021,
                           '18:00',
                           31,
                           'Vendedor trinta e um',
                           0,
                           'Ceará'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           19,
                           23,
                           'Cliente vinte e tres',
                           'Eusébio',
                           'Ceará',
                           'Brasil',
                           4,
                           58000,
                           'LLLUNS1JS76S39',
                           'Nissan',
                           'Versa',
                           2020,
                           2,
                           'Etanol',
                           20221101,
                           '8:00',
                           20,
                           150,
                           20221121,
                           '18:00',
                           31,
                           'Vendedor trinta e um',
                           0,
                           'Ceará'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           20,
                           5,
                           'Cliente cinco',
                           'Manaus',
                           'Amazonas',
                           'Brasil',
                           1,
                           1800,
                           'AAAKNS8JS76S39',
                           'Toyota',
                           'Corolla XEI',
                           2023,
                           3,
                           'Flex',
                           20230102,
                           '18:00',
                           10,
                           880,
                           20230112,
                           '18:00',
                           16,
                           'Vendedor dezesseis',
                           0,
                           'Amazonas'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           21,
                           5,
                           'Cliente cinco',
                           'Manaus',
                           'Amazonas',
                           'Brasil',
                           1,
                           8500,
                           'AAAKNS8JS76S39',
                           'Toyota',
                           'Corolla XEI',
                           2023,
                           3,
                           'Flex',
                           20230115,
                           '18:00',
                           10,
                           880,
                           20230125,
                           '18:00',
                           16,
                           'Vendedor dezesseis',
                           0,
                           'Amazonas'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           22,
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil',
                           5,
                           28000,
                           'MSLUNS1JS76S39',
                           'Nissan',
                           'Frontier',
                           2022,
                           4,
                           'Diesel',
                           20230125,
                           '8:00',
                           5,
                           600,
                           20230130,
                           '18:00',
                           32,
                           'Vendedora trinta e dois',
                           1,
                           'Mato Grosso do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           23,
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil',
                           5,
                           38000,
                           'MSLUNS1JS76S39',
                           'Nissan',
                           'Frontier',
                           2022,
                           4,
                           'Diesel',
                           20230131,
                           '8:00',
                           5,
                           600,
                           20230205,
                           '18:00',
                           32,
                           'Vendedora trinta e dois',
                           1,
                           'Mato Grosso do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           24,
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil',
                           5,
                           48000,
                           'MSLUNS1JS76S39',
                           'Nissan',
                           'Frontier',
                           2022,
                           4,
                           'Diesel',
                           20230206,
                           '8:00',
                           5,
                           600,
                           20230211,
                           '18:00',
                           32,
                           'Vendedora trinta e dois',
                           1,
                           'Mato Grosso do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           25,
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil',
                           5,
                           68000,
                           'MSLUNS1JS76S39',
                           'Nissan',
                           'Frontier',
                           2022,
                           4,
                           'Diesel',
                           20230212,
                           '8:00',
                           5,
                           600,
                           20230217,
                           '18:00',
                           32,
                           'Vendedora trinta e dois',
                           1,
                           'Mato Grosso do Sul'
                       );

INSERT INTO tb_locacao (
                           idLocacao,
                           idCliente,
                           nomeCliente,
                           cidadeCliente,
                           estadoCliente,
                           paisCliente,
                           idCarro,
                           kmCarro,
                           classiCarro,
                           marcaCarro,
                           modeloCarro,
                           anoCarro,
                           idcombustivel,
                           tipoCombustivel,
                           dataLocacao,
                           horaLocacao,
                           qtdDiaria,
                           vlrDiaria,
                           dataEntrega,
                           horaEntrega,
                           idVendedor,
                           nomeVendedor,
                           sexoVendedor,
                           estadoVendedor
                       )
                       VALUES (
                           26,
                           26,
                           'Cliente vinte e seis',
                           'Campo Grande',
                           'Mato Grosso do Sul',
                           'Brasil',
                           5,
                           78000,
                           'MSLUNS1JS76S39',
                           'Nissan',
                           'Frontier',
                           2022,
                           4,
                           'Diesel',
                           20230218,
                           '8:00',
                           1,
                           600,
                           20230219,
                           '18:00',
                           32,
                           'Vendedora trinta e dois',
                           1,
                           'Mato Grosso do Sul'
                       );


-- Table: tb_locacao_norm
DROP TABLE IF EXISTS tb_locacao_norm;

CREATE TABLE IF NOT EXISTS tb_locacao_norm (
    idLocacao     INT PRIMARY KEY,
    idCliente     INT REFERENCES tb_cliente (idCliente),
    idCarro       INT REFERENCES tb_carro (idCarro),
    kmCarro       INT,
    idcombustivel INT REFERENCES tb_combustivel (idCombustivel),
    dataLocacao   NUM,
    horaLocacao   NUM,
    qtdDiaria     INT,
    vlrDiaria     NUM,
    dataEntrega   NUM,
    horaEntrega   NUM,
    idVendedor    INT REFERENCES tb_vendedor (idVendedor) 
);

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                1,
                                2,
                                98,
                                25412,
                                1,
                                20150110,
                                '10:00',
                                2,
                                100,
                                20150112,
                                '10:00',
                                5
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                2,
                                2,
                                98,
                                29450,
                                1,
                                20150210,
                                '12:00',
                                2,
                                100,
                                20150212,
                                '12:00',
                                5
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                3,
                                3,
                                99,
                                20000,
                                1,
                                20150213,
                                '12:00',
                                2,
                                150,
                                20150215,
                                '12:00',
                                6
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                4,
                                4,
                                99,
                                21000,
                                1,
                                20150215,
                                '13:00',
                                5,
                                150,
                                20150220,
                                '13:00',
                                6
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                5,
                                4,
                                99,
                                21700,
                                1,
                                20150302,
                                '14:00',
                                5,
                                150,
                                20150307,
                                '14:00',
                                7
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                6,
                                6,
                                3,
                                121700,
                                1,
                                20160302,
                                '14:00',
                                10,
                                250,
                                20160312,
                                '14:00',
                                8
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                7,
                                6,
                                3,
                                131800,
                                1,
                                20160802,
                                '14:00',
                                10,
                                250,
                                20160812,
                                '14:00',
                                8
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                8,
                                4,
                                3,
                                151800,
                                1,
                                20170102,
                                '18:00',
                                10,
                                250,
                                20170112,
                                '18:00',
                                6
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                9,
                                4,
                                3,
                                152800,
                                1,
                                20180102,
                                '18:00',
                                10,
                                280,
                                20180112,
                                '18:00',
                                6
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                10,
                                10,
                                10,
                                211800,
                                1,
                                20180302,
                                '18:00',
                                10,
                                50,
                                20180312,
                                '18:00',
                                16
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                11,
                                20,
                                7,
                                212800,
                                1,
                                20180401,
                                '11:00',
                                10,
                                50,
                                20180411,
                                '11:00',
                                16
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                12,
                                20,
                                6,
                                21800,
                                1,
                                20200401,
                                '11:00',
                                10,
                                150,
                                20200411,
                                '11:00',
                                16
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                13,
                                22,
                                2,
                                10000,
                                2,
                                20220501,
                                '8:00',
                                20,
                                150,
                                20220521,
                                '18:00',
                                30
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                14,
                                22,
                                2,
                                20000,
                                2,
                                20220601,
                                '8:00',
                                20,
                                150,
                                20220621,
                                '18:00',
                                30
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                15,
                                22,
                                2,
                                30000,
                                2,
                                20220701,
                                '8:00',
                                20,
                                150,
                                20220721,
                                '18:00',
                                30
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                16,
                                22,
                                2,
                                40000,
                                2,
                                20220801,
                                '8:00',
                                20,
                                150,
                                20220721,
                                '18:00',
                                30
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                17,
                                23,
                                4,
                                55000,
                                2,
                                20220901,
                                '8:00',
                                20,
                                150,
                                20220921,
                                '18:00',
                                31
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                18,
                                23,
                                4,
                                56000,
                                2,
                                20221001,
                                '8:00',
                                20,
                                150,
                                20221021,
                                '18:00',
                                31
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                19,
                                23,
                                4,
                                58000,
                                2,
                                20221101,
                                '8:00',
                                20,
                                150,
                                20221121,
                                '18:00',
                                31
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                20,
                                5,
                                1,
                                1800,
                                3,
                                20230102,
                                '18:00',
                                10,
                                880,
                                20230112,
                                '18:00',
                                16
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                21,
                                5,
                                1,
                                8500,
                                3,
                                20230115,
                                '18:00',
                                10,
                                880,
                                20230125,
                                '18:00',
                                16
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                22,
                                26,
                                5,
                                28000,
                                4,
                                20230125,
                                '8:00',
                                5,
                                600,
                                20230130,
                                '18:00',
                                32
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                23,
                                26,
                                5,
                                38000,
                                4,
                                20230131,
                                '8:00',
                                5,
                                600,
                                20230205,
                                '18:00',
                                32
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                24,
                                26,
                                5,
                                48000,
                                4,
                                20230206,
                                '8:00',
                                5,
                                600,
                                20230211,
                                '18:00',
                                32
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                25,
                                26,
                                5,
                                68000,
                                4,
                                20230212,
                                '8:00',
                                5,
                                600,
                                20230217,
                                '18:00',
                                32
                            );

INSERT INTO tb_locacao_norm (
                                idLocacao,
                                idCliente,
                                idCarro,
                                kmCarro,
                                idcombustivel,
                                dataLocacao,
                                horaLocacao,
                                qtdDiaria,
                                vlrDiaria,
                                dataEntrega,
                                horaEntrega,
                                idVendedor
                            )
                            VALUES (
                                26,
                                26,
                                5,
                                78000,
                                4,
                                20230218,
                                '8:00',
                                1,
                                600,
                                20230219,
                                '18:00',
                                32
                            );


-- Table: tb_vendedor
DROP TABLE IF EXISTS tb_vendedor;

CREATE TABLE IF NOT EXISTS tb_vendedor (
    idVendedor INT          PRIMARY KEY,
    nome       VARCHAR (15),
    sexo       SMALLINT,
    estado     VARCHAR (40) 
);

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            5,
                            'Vendedor cinco',
                            0,
                            'São Paulo'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            6,
                            'Vendedora seis',
                            1,
                            'São Paulo'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            7,
                            'Vendedora sete',
                            1,
                            'Rio de Janeiro'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            8,
                            'Vendedora oito',
                            1,
                            'Minas Gerais'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            16,
                            'Vendedor dezesseis',
                            0,
                            'Amazonas'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            30,
                            'Vendedor trinta',
                            0,
                            'Rio Grande do Sul'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            31,
                            'Vendedor trinta e um',
                            0,
                            'Ceará'
                        );

INSERT INTO tb_vendedor (
                            idVendedor,
                            nome,
                            sexo,
                            estado
                        )
                        VALUES (
                            32,
                            'Vendedora trinta e dois',
                            1,
                            'Mato Grosso do Sul'
                        );


COMMIT TRANSACTION;
SET foreign_key_checks = 0;
