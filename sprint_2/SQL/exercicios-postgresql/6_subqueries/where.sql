-- EXEMPLOS ########################################################################

-- Subquery no WHERE
-- Não retorna mais de uma linha e/ou coluna

-- (Exemplo 1)

-- Informe qual é o veículo mais barato da tabela products
select *
from sales.products
where price = (select min(price) from sales.products)
