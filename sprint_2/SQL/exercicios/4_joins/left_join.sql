-- EXEMPLOS ########################################################################

-- (Exemplo 1) Utilize o LEFT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
select * from temp_tables.tabela_1
select * from temp_tables.tabela_2

select t1.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 left join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf

-- (Exemplo 2) Identifique qual é o status profissional mais frequente nos clientes que compraram automóveis no site

select 
	professional_status,
	count(paid_date) as pagamentos
from sales.funnel as fun left join sales.customers as cus on fun.customer_id = cus.customer_id
group by cus.professional_status
order by pagamentos desc

-- (Exemplo 3) Identifique qual é o gênero mais frequente nos clientes que compraram automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders
select * from temp_tables.ibge_genders limit 10

select 
	ibge.gender,
	count(fun.paid_date) 
from sales.funnel as fun left join sales.customers as cus on fun.customer_id = cus.customer_id
	left join temp_tables.ibge_genders as ibge on lower(cus.first_name) = ibge.first_name
group by ibge.gender

-- (Exemplo 4) Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions
select * from sales.funnel limit 10
select * from sales.customers limit 10
select * from temp_tables.regions limit 10

-- seleção das colunas (region | visit)
select
	reg.region,
	count(fun.visit_page_date) as visitas

-- declaração das tabelas e seus relacionamentos (fun | cus | reg)
from sales.funnel as fun left join sales.customers as cus
	on fun.customer_id = cus.customer_id 
left join temp_tables.regions as reg
	on lower(cus.city) = lower(reg.city) and lower(cus.state) = lower(reg.state)

-- ordenação da saída (region | visitas)
group by reg.region
order by visitas 