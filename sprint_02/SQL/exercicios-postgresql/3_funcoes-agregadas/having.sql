-- PARA QUE SERVE ##################################################################
-- Serve para filtrar linhas da seleção por uma coluna agrupada
-- A diferença entre este e o where é que o segundo não aceita função agregada na query


-- EXEMPLOS ########################################################################

-- (Exemplo 1) seleção com filtro no HAVING 
-- Calcule o nº de clientes por estado filtrando apenas estados acima de 100 clientes
select 
    state, 
    count(*)
from sales.customers
group by state
having count(*) > 100

-- (Exemplo 2) Calcule o nº de clientes por estado filtrando apenas estados acima de 100 clientes, sem considerar MG
select 
    state, 
    count(*)
from sales.customers
group by state
having count(*) > 100
	and state <> 'MG'


-- RESUMO ##########################################################################
-- (1) Tem a mesma função do WHERE mas pode ser usado para filtrar os resultados 
-- das funções agregadas enquanto o WHERE possui essa limitação
-- (2) A função HAVING também pode filtrar colunas não agregadas








