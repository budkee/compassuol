

-- (Exemplo 3) Subquery no FROM
-- Calcule a média de idades dos clientes por status profissional
select
	professional_status,
	avg(idade) as idade_media
from (
		select
			professional_status,
			(current_date - birth_date)/365 as idade
		from sales.customers
	 ) as alguma_tabela
group by professional_status