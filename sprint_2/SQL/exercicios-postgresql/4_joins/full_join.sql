-- (Exemplo 4) Utilize o FULL JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2

select t2.cpf, t1.name, t2.state
from temp_tables.tabela_1 as t1 full join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf