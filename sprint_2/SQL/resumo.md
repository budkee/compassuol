![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

## Sumário | PostgreSQL

- [x] Setup
- [x] Fundamentos
- [x] Comandos
- [x] Projeto 1 | Dashboard de acompanhamento de vendas
- [x] Projeto 2 | Análise de perfil dos clientes
- [x] Links e outras referências
- [x] Certificado

## Setup
>
> Para começar a estudar SQL você vai precisar baixar e instalar os seguintes componentes:
>
> - [pgAdmin](https://www.pgadmin.org/): software gráfico para administração do PostgreSQL;
> - [PostgreSQL](https://www.postgresql.org/docs/): sistema gerenciador do banco de dados (SGBD);
> - [Configurar o Banco de Dados (BD)](config_bd.sql): através da execução de um script;
>
> Baixe o pgAdmin pelo pacote, pois este irá conter tanto o _pgAdmin_ quanto o _PostgreSQL_.
>
> > #### Porta do servidor: 5433
>

## Overview | pgAdmin 4.15
>
> Ao abrir o pgAdmin você irá encontrar a seguinte interface:
>
> ![inicio](./img/inicio_pgadmin.png)
>
> O que nos será útil no momento será a **Visualização de Tabelas** e o **Query Tool**.
>
> Clicando em servidores (Servers) pela árvore de trabalho (Working Tree / Object Explorer):
>
> ![tabelas](./img/tabelas_pgadmin.png)
>
> Para encontrar o Query Tool, selecione o ícone ao lado de Object Explorer, como na imagem abaixo, ou digite `option` + `shift` + `q`.
>
> ![query tool](./img/query_tool.png)

## Configuração do BD
>
> Para realizar a análise de dados de um determinado contexto, é necessário ter em mãos:
>
> 1. O diagrama dos objetos do negócio: **_schema_**;
>
>    ![schema](img/schema.png)
>
> 2. O código de comandos para criação de tabelas e colunas do BD: **_script_**;
>
>    [Script](./query-completa.txt)
>
> #### Configuração | pgAdmin
>
> 1. Vá em schema e crie mais 2 objetos: _sales_ e  _temp_tables_:
>
>    ![cria_schema](./img/cria_schema.png)
>
> 2. Vá em Query Tools/Editor e insira o script para gerar todas as tabelas:
>
>     ![gera_tabela](./img/gera_tabela.png)
>
> 3. Clique em F5 para executar o script e você terá uma interface semelhante a esta:
>
>      ![config_bd_pronta](img/config_bd_pronta.png)
>

## Comandos Básicos
>
### SELECT | Comandos Básicos
>
> O comando [SELECT](https://www.postgresql.org/docs/15/queries-select-lists.html) é utilizado para selecionar e retornar as colunas de uma determinada tabela.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>
> **Exercícios**
>
> - [SELECT | Respondido](./exercicios/1_comandos/select_resp.sql)
>

### DISTINCT | Comandos Básicos
>
> O comando [DISTINCT](https://www.postgresql.org/docs/15/queries-select-lists.html#:~:text=be%20passed%20on.-,7.3.3.%C2%A0DISTINCT,-After%20the%20select) é utilizado para remover linhas duplicadas e entregar linhas distintas ou diferentes.
>
> > **No mundo dos negócios...**
> >
> > Pode ser utilizado para entender quais tipos de dados compõe aquela coluna ou qual é a sua forma canônica dentro do BD.
> >
> > Isso é importante pois o resultado traz os dados essenciais e sem repetição para formulação das queries.
>
> **Sintaxe**
>
>     select distinct coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>
> **Exercícios**
>
> - [DISTINCT | Respondido](./exercicios/1_comandos/select-distinct_resp.sql)
>

### WHERE | Comandos Básicos
>
> O comando [WHERE](https://www.postgresql.org/docs/15/queries-table-expressions.html#QUERIES-WHERE) é utilizado para filtrar as buscas de acordo com a condição de interesse.
>
> > **Mundo dos Negócios**
> >
> > Pode ser utilizado para retirar dados de clientes em potenciais de compra (leads), fornecendo as condições de análise da equipe de marketing.
> >
> > Para saber como é composto o tipo de dado no BD, execute e verifique o tipo com `select distinct`.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>     where condicao_x = true 
>
> **Exercícios**
>
> - [WHERE | Respondido](./exercicios/1_comandos/where_resp.sql)
>

### ORDER BY | Comandos Básicos
>
> O comando [ORDER BY](https://www.postgresql.org/docs/15/queries-order.html) é utilizado para ordenar as buscas de acordo com a regra definida pelo usuário.
>
> > **Mundo dos Negócios**
> >
> > Pode ser utilizado para retirar dados de clientes em potenciais de compra (leads) e realisar a análise do perfil.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>     where condicao_x = true 
>     order by coluna_1
>
> **Exercícios**
>
> - [ORDER BY | Respondido](./exercicios/1_comandos/order-by_resp.sql)
>

### LIMIT | Comandos Básicos
>
> O comando [LIMIT](https://www.postgresql.org/docs/15/queries-limit.html) é utilizado para limitar o número de linhas no output da query. Isso diminui o gasto com processamento do servidor para tabelas com muitas linhas.
>
> > **Mundo dos Negócios**
> >
> > É comumente utilizado para reduzir o processamento do servidor, diminuindo gastos com a infraestrutura ou apenas verificar os X primeiros resultados.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>     limit N
>
> **Exercícios**
>
> - [LIMIT | Respondido](./exercicios/1_comandos/limit_resp.sql)
>

### Desafio | Comandos Básicos
>
> - [Desafio | Respondido](./exercicios/1_comandos/desafio_resp.sql)
>

## Operadores

### Aritméticos
>
> | Adição | Subtração | Multiplicação | Divisão | Exponencial | Módulo ou Coringa |  |
> | ---| --- | --- | --- | --- | --- | --- |
> | + | - | * | \ | ^ | % | |\| |
>
> #### Concatenação de Strings
>
> **Sintaxe**
>
>     select 
>        first_name,
>       last_name,
>       first_name || ' ' || last_name as nome_completo
>     from sales.customers
>
> **Exercícios**
>
> - [Operadores Aritméticos e Concatenação | Respondido](./exercicios/2_operadores/op_aritmeticos.sql)
>

### Comparação | Operadores
>
> | Igual | Maior que | Menor que |  Maior ou igual que | Menor ou igual que | Diferente de |
> | --- | --- | --- | --- | --- | --- |
> | = | > | < | >= | <= | <> |
>
> **Exercícios**
>
> - [Comparação | Respondido](./exercicios/2_operadores/op_comparacao.sql)
>

### Lógicos | Operadores
>
> | E | Ou | Negação | Entre | Em  | Semelhante a | Semelhante a (maiúsculas e minúsculas) | É nulo |
> | --- | --- | --- | --- | --- | --- | --- | --- |
> | AND | OR | NOT | BETWEEN | IN | LIKE | ILIKE | IS NULL |
>
> **Exercícios**
>
> - [Lógicos | Respondido](./exercicios/2_operadores/op_logicos.sql)
>

### Desafio | Operadores
>
> - [Desafio | Respondido](./exercicios/2_operadores/op_desafio.sql)
>

## Comandos Avançados

### Funções Agregadas
>
> As [funções agregadas](https://www.postgresql.org/docs/15/functions-aggregate.html) são funções semelhantes às utilizadas nas planilhas de excel para contagem, mínimo, máximo e média de uma coluna.
>
> - [Funções agregadas | Respondido](./exercicios/3_funcoes-agregadas/func_agregadas.sql)
>

### GROUP BY | Funções Agregadas
>
> O comando [GROUP BY]() é utilizado para fazer agrupamentos entre
>
> - [Group By | Respondido](./exercicios/3_funcoes-agregadas/group_by.sql)
>

### HAVING | Funções Agregadas
>
> - [Having | Respondido](./exercicios/3_funcoes-agregadas/having.sql)
>

### Desafio | Funções Agregadas
>
> - [Desafio | Respondido](./exercicios/3_funcoes-agregadas/desafio.sql)
>

## Joins
>
> As [joins]() ão junções realizadas entre duas tabelas do BD a partir de uma coluna em comum. É o comando utilizado para relacionar duas tabelas.
>
> As convenções para nomenclatura são:
>
> - Tabela da esquerda (A) é a tabela que foi declarada primeiro.
> - Tabela da direita (B) é a tabela que foi declarada em seguida.
>
> - [Joins | Sintaxe](./exercicios/4_joins/joins_sintaxe.sql)
>
> > **Dica:** identifique primeiro qual é a coluna que existe nas duas tabelas e construa a query `from`.
>
> > **Método**
> >
> > 1. Seleção das colunas do enunciado(region | visitas)
> > 2. Declaração das tabelas e seus relacionamentos (fun | cus | reg)
> > 3. Ordenação da saída (region | visitas)
> >
>## Tipos
>
> ### Left Join | **Mais utilizado na prática**
>
> Seleção de todos os dados de uma coluna da tabela esquerda + todos os dados existentes na mesma coluna (match) da tabela direita.
>
> > ![left-join](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/SQL_Join_-_01_A_Left_Join_B.svg/2844px-SQL_Join_-_01_A_Left_Join_B.svg.png)
>
> - [Left Join | Exercícios](./exercicios/4_joins/left_join.sql)
>
> ### Inner Join
>
> Seleção de todos os dados que deram match.
>
> > ![inner-join](https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/SQL_Join_-_07_A_Inner_Join_B.svg/2844px-SQL_Join_-_07_A_Inner_Join_B.svg.png)
>
> - [Inner Join | Exercícios](./exercicios/4_joins/inner_join.sql)
>
> ### Right Join
>
> Seleção de todos os dados de uma coluna da tabela direita + todos os dados com match da tabela esquerda.
>
> > ![right-join](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/SQL_Join_-_03_A_Right_Join_B.svg/2844px-SQL_Join_-_03_A_Right_Join_B.svg.png)
>
> - [Right Join | Exercícios](./exercicios/4_joins/right_join.sql)
>
> ### Full Join
>
> Seleção de todos os dados e junção em uma nova tabela.
>
> > ![full-join](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/SQL_Join_-_05b_A_Full_Join_B.svg/2844px-SQL_Join_-_05b_A_Full_Join_B.svg.png)
>
> - [Full Join | Exercícios](./exercicios/4_joins/full_join.sql)
>
>## Desafio | Joins
>
> > - [Desafio](./exercicios/4_joins/sem-resposta/03-Joins-Desafio.txt)
> > - [Desafio | Gabarito](./exercicios/4_joins/com-resposta/03-Joins-Desafio%20(resolução).txt)
> > - [Desafio | Respondido](./exercicios/4_joins/desafio.sql)
>
## Unions
>
> É um comando utilizado para "colar" uma tabela sobre a outra, desde que estas tenham a mesma quantidade de colunas e linhas.
>
> ### Tipos
>
> Considere a tabela 1 e a tabela 2:
>
> - Union All: copia e cola todos os dados da tabela 1 sobre a tabela 2;
>
> > Utilize quando os dados das tabelas forem diferentes;
>
> - Union: copia e cola apenas os dados da tabela 2 que são diferentes da tabela 1;
>
> > Utilizar quando existem dados semelhantes;
>
> ### Exemplos
>
> - [Unions | Respondido](./exercicios/5_unions/union.sql)
>
## Subqueries
>
> É utilizado para realizar consultas dentro de outras consultas, reutilizando os dados dessa busca dentro da query principal.
>
> ### Tipos
>
> - [Subquery no WHERE](./exercicios/6_subqueries/where.sql)
> - [Subquery com WITH](./exercicios/6_subqueries/with.sql)
> - [Subquery no FROM](./exercicios/6_subqueries/from.sql)
> - [Subquery no SELECT](./exercicios/6_subqueries/select.sql)
>
> ### Exemplos
>
> - [Subqueries | Respondido](./exercicios/6_subqueries/resp.sql)
>
> ### Desafio | Joins
>
> - [Desafio](./exercicios/6_subqueries/sem-resposta/03-Subqueries-Desafio.txt)
> - [Desafio | Gabarito](./exercicios/6_subqueries/com-resposta/03-Subqueries-Desafio+(resolução).txt)
> - [Desafio | Respondido](./exercicios/6_subqueries/desafio.sql)
>
## Tratamento de dados
>
> ### Comandos
>
> - Operador `: :`
> - CAST
>
> ### Conversão de unidades
>
> - [Conversão de texto em data | ::](./exercicios/7_tratamento-de-dados/texto_data_::.sql)
> - [Conversão de texto em número](./exercicios/7_tratamento-de-dados/texto_numero.sql)
> - [Conversão de número em texto](./exercicios/7_tratamento-de-dados/numero_texto.sql)
> - [Conversão de texto em data | CAST](./exercicios/7_tratamento-de-dados/texto_data_cast.sql)
>
> ### Tratamento Geral
>
> - [CASE WHEN](https://www.w3schools.com/sql/sql_case.asp)
> - [COALESCE](https://www.w3schools.com/sql/func_sqlserver_coalesce.asp)
> - [Tratamento Geral | Respondido](./exercicios/7_tratamento-de-dados/tratamento_geral.sql)
>
> ### Tratamento de Texto
>
> - [UPPER](https://www.w3schools.com/sql/func_sqlserver_upper.asp)
> - [LOWER](https://www.w3schools.com/sql/func_sqlserver_lower.asp)
> - [TRIM](https://www.w3schools.com/sql/func_sqlserver_trim.asp)
> - [REPLACE](https://www.w3schools.com/sql/func_sqlserver_replace.asp)
> - [Tratamento Texto | Respondido](./exercicios/7_tratamento-de-dados/tratamento_texto.sql)
>
> ### Tratamento de Datas
>
> -[INTERVAL](https://www.w3schools.com/sql/func_mysql_date_add.asp)
> -[DATE_TRUNC](https://www.w3resource.com/PostgreSQL/date_trunc-function.php)
> -[EXTRACT](https://www.w3schools.com/sql/func_mysql_extract.asp)
> -[DATEDIFF](https://www.w3schools.com/sql/func_mysql_datediff.asp)
>
> - [Tratamento de Datas | Respondido](./exercicios/7_tratamento-de-dados/tratamento_datas.sql)
>
> ### Funções
>
> - [Funções | Respondido](./exercicios/7_tratamento-de-dados/funcoes.sql)
>
## Manipulação de tabelas
>
> ### Tabelas | Geral
>
> #### Criação
>
> - [CREATE TABLE](https://www.w3schools.com/sql/sql_create_table.asp)
> - [CREATE TABLE | QUERY]()
>
> #### Deleção
>
> - [DROP TABLE](https://www.w3schools.com/sql/sql_drop_table.asp)
>
> ### Linhas
>
> #### Inserção
>
> - [INSERT INTO]()
>
> #### Atualização
>
> - [UPDATE SET]()
>
> #### Deleção
>
> - [DELETE FROM]()
>
> ### Colunas
>
> #### Inserção
>
> - [ALTER TABLE](https://www.w3schools.com/sql/sql_alter.asp)
>
> #### Atualização
>
> - [ALTER COLUMN](https://www.w3schools.com/sql/sql_ref_alter_column.asp)
>
> #### Deleção
>
> - [DROP COLUMN](https://www.w3schools.com/sql/sql_ref_drop_column.asp)
>

## Projeto 1 | Dashboard de acompanhamento de vendas
>
> > **Definição do problema**
> >
> > Objetivo: Criar um dashboard de vendas com os principais indicadores de desmpenho e com os principais drivers dos resultados do mês.
>
> ### Queries
>
> - [Queries](./exercicios/9_projeto1-dashboard-de-vendas/queries_projeto-1.sql)
>
> ### Gráficos
>
> - [Dashboard]()
>

## Projeto 2 | Análise de perfil dos clientes
>
> > **Definição do problema**
> >
> > Objetivo: Criar um dashboard que analise as principais características dos leads que visitam o nosso e-commerce
>
> ### Queries
>
> - [Queries](./exercicios/9_projeto1-dashboard-de-vendas/queries_projeto-2.sql)
>
>
> ### Gráficos
>
> - [Dashboard]()
>

## Links ou referências
>
> - [Documentação | PostgreSQL 15](https://www.postgresql.org/docs/15/index.html)
> - [Documentação | SQLite](https://www.sqlite.org/lang.html)
>

## Certificado
>
> ![certificado](./img/cert-sql.jpg)
>