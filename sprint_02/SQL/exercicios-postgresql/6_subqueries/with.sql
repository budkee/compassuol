-- EXEMPLOS ########################################################################
-- Subquery com WITH

-- Comando mais utilizado na análise de dados

-- Calcule a idade média dos clientes por status profissional

with alguma_tabela as (
select
	professional_status,
	(current_date - birth_date)/365 as idade
from sales.customers
)

select
	professional_status,
	avg(idade) as idade_media
from alguma_tabela
group by professional_status