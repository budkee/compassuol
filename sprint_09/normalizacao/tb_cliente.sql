--
-- File generated with SQLiteStudio v3.4.4 on qua. nov. 8 14:28:16 2023
--
-- Text encoding used: UTF-8
--
-- Results of query:
-- select * from tb_cliente
--
BEGIN TRANSACTION;
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (2, 'Cliente dois', 'São Paulo', 'São Paulo', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (3, 'Cliente tres', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (4, 'Cliente quatro', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (6, 'Cliente seis', 'Belo Horizonte', 'Minas Gerais', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (10, 'Cliente dez', 'Rio Branco', 'Acre', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (20, 'Cliente vinte', 'Macapá', 'Amapá', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (22, 'Cliente vinte e dois', 'Porto Alegre', 'Rio Grande do Sul', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (23, 'Cliente vinte e tres', 'Eusébio', 'Ceará', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (5, 'Cliente cinco', 'Manaus', 'Amazonas', 'Brasil');
INSERT INTO tb_cliente (idCliente, nome, cidade, estado, pais) VALUES (26, 'Cliente vinte e seis', 'Campo Grande', 'Mato Grosso do Sul', 'Brasil');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
