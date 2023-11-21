-- Dimensão Vendedor
CREATE VIEW dim_vendedor AS
    SELECT idVendedor,
           nome,
           sexo,
           estado
    FROM tb_vendedor;

-- Dimensão Carro
CREATE VIEW dim_carro AS
    SELECT 
        idCarro,
        classi,
        marca,
        modelo,
        ano
    FROM tb_carro;

-- Dimensão Cliente
CREATE VIEW dim_cliente AS
    SELECT 
        idCliente,
        nome,
        cidade,
        estado,
        pais
    FROM tb_cliente;

-- Fato Locação
CREATE VIEW fato_locacao AS
    SELECT 
        idLocacao,
        idCliente,
        idCarro,
        idVendedor,q
        kmCarro,
        dataLocacao,
        horarioLocacao,
        qtdDiaria,
        vlrDiaria,
        dataEntrega,
        horarioEntrega
    FROM tb_locacao_norm;
