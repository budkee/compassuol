![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

## Sumário | PostgreSQL

- [x] Setup
- [x] Fundamentos
- [ ] Comandos
- [ ] Projeto 1 | Dashboard de acompanhamento de vendas
- [ ] Projeto 2 | Análise de perfil dos clientes
- [x] Links e outras referências
- [ ] Certificado

## Setup
>
> Para começar a estudar SQL você vai precisar baixar e instalar os seguintes componentes:
>
> - [pgAdmin](https://www.pgadmin.org/): software gráfico para administração do PostgreSQL;
> - [PostgreSQL](): sistema gerenciador do banco de dados (SGBD);
> - Configurar o Banco de Dados (BD): através da execução de um script;
>
> > Ao baixar o [pgAdmin](https://www.pgadmin.org/), busque pelo pacote. Este vai conter tanto o _pgAdmin_ quanto o _PostgreSQL_.
>
> > #### Porta do servidor: 5433
>

## Overview | pgAdmin 4.15
>
> Ao abrir o pgAdmin você irá encontrar a seguinte interface:
>
> ![inicio](./img/inicio_pgadmin.png)
>
> O que nos será útil no momento será a visualização de tabelas, clicando em servidores (Servers) pela árvore de trabalho (Working Tree / Object Explorer):
>
> ![tabelas](./img/tabelas_pgadmin.png)
>

## Configuração do BD
>
> Para realizar a análise de dados de um determinado contexto, é necessário ter em mãos o diagrama dos objetos do negócio, **_schema_**, e o texto contendo os comandos para criação de tabelas e colunas, **_script_**.
>
> **Schema**
>
> ![schema](img/schema.png)
>
> **Script**
>
> [Query Completa](./query-completa.txt)
>
> #### Configuração
>
> 1. Vá em schema e crie mais 2 objetos: _sales_ e  _temp_tables_:
>
>    ![cria_schema](./img/cria_schema.png)
>
>
> 2. Vá em Query Tools/Editor e insira o script para gerar todas as tabelas:
>
>     ![gera_tabela](./img/gera_tabela.png)
>
> 3. Clique em F5 para executar o script e você terá uma interface semelhante a esta:
>
>      ![config_bd_pronta](img/config_bd_pronta.png)
>
>

## Comandos
>
### SELECT
>
> **Para quê serve?**
>
>     O comando SELECT é utilizado para selecionar as colunas de tabelas
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>
> **Exercícios**
>
> - [SELECT](./exercicios/1_comandos/sem-resposta/01-Comandos+básicos-SELECT.txt)
> - [SELECT | Gabarito](./exercicios/1_comandos/com-resposta/01-Comandos+básicos-SELECT+(resolução).txt)
> - [SELECT | Respondido](./exercicios/1_comandos/select_resp.sql)
>
>

### DISTINCT
>
> **Para quê serve?**
>
> O comando DISTINCT é utilizado para remover linhas duplicadas e entregar linhas distintas ou diferentes.
>
> **Mundo dos Negócios**
>
> Pode ser utilizado para entender quais tipos de dados compõe aquela coluna, qual é a sua forma canônica dentro do BD. Isso é importante pois é a partir desta análise que você irá formular as queries dessa coluna de interesse.
>
> **Sintaxe**
>
>     select distinct coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>
> **Exercícios**
>
> - [DISTINCT](./exercicios/1_comandos/sem-resposta/02-Comandos+básicos-DISTINCT.txt)
> - [DISTINCT | Gabarito](./exercicios/1_comandos/com-resposta/02-Comandos+básicos-DISTINCT+(resolução).txt)
> - [DISTINCT | Respondido](./exercicios/1_comandos/select-distinct_resp.sql)
>
>

### WHERE
>
> **Para quê serve?**
>
>   O comando WHERE é utilizado para filtrar as buscas de acordo com a condição de interesse.
>
> **Mundo dos Negócios**
>
> Pode ser utilizado para retirar dados de clientes em potenciais de compra (leads), fornecendo as condições de análise da equipe de marketing.
>     
> >Para saber como é composto o tipo de dado no BD, execute e verifique o tipo com `select distinct`.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>     where condicao_x = true 
>
> **Exercícios**
>
> - [WHERE](./exercicios/1_comandos/sem-resposta/02-Comandos+básicos-DISTINCT.txt)
> - [WHERE | Gabarito](./exercicios/1_comandos/com-resposta/03-Comandos+básicos-WHERE+(resolução).txt)
> - [WHERE | Respondido](./exercicios/1_comandos/where_resp.sql)
>
>

### ORDER BY
>
> **Para quê serve?**
>
> O comando ORDER BY é utilizado para ordenar as buscas de acordo com a regra definida pelo usuário.
>
> **Mundo dos Negócios**
>
> Pode ser utilizado para retirar dados de clientes em potenciais de compra (leads) e realisar a análise do perfil.
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
> - [ORDER BY](./exercicios/1_comandos/sem-resposta/04-Comandos+básicos-ORDER+BY.txt)
> - [ORDER BY | Gabarito](./exercicios/1_comandos/com-resposta/04-Comandos+básicos-ORDER+BY+(resolução).txt)
> - [ORDER BY | Respondido](./exercicios/1_comandos/order-by_resp.sql)
>
>

### LIMIT
>
> **Para quê serve?**
>
> O comando LIMIT é utilizado para limitar o número de linhas no output. Isso diminui o gasto com processamento do servidor.
>
> **Mundo dos Negócios**
>
> Comumente utilizado para reduzir o processamento do servidor, diminuindo gastos com a infraestrutura.
>
> **Sintaxe**
>
>     select coluna_1, coluna_2, coluna_3
>     from schema_1.tabela_1
>     limit N
>
> **Exercícios**
>
> - [LIMIT](./exercicios/1_comandos/sem-resposta/05-Comandos+básicos-LIMIT.txt)
> - [LIMIT | Gabarito](./exercicios/1_comandos/com-resposta/05-Comandos+básicos-LIMIT+(resolução).txt)
> - [LIMIT | Respondido](./exercicios/1_comandos/limit_resp.sql)
>
>
>### Desafio | Busca regrada
>
> > - [Desafio](./exercicios/1_comandos/sem-resposta/06-Comandos+básicos-Desafio.txt)
> > - [Desafio | Gabarito](./exercicios/1_comandos/com-resposta/06-Comandos+básicos-Desafio%20(resolução).txt)
> > - [Desafio | Respondido](./exercicios/1_comandos/desafio_resp.sql)
>

## Operadores
>
> ### Aritméticos
> > | Adição | Subtração | Multiplicação | Divisão | Exponencial | Módulo ou Coringa | Concatenação de Strings |
> > | ---| --- | --- | --- | --- | --- | --- |
> > | + | - | * | \ | ^ | % | [2 barras verticais](https://docs.oracle.com/cloud/help/pt/analytics-cloud/ACSMD/GUID-4EE8C58D-391B-46A9-B0B3-9FA91B8159D1.htm#BILUG664) |
> 
> **Exercícios**
>
> - [Operadores Aritméticos](./exercicios/2_operadores/sem-resposta/01-Operadores-Aritméticos.txt)
> - [Operadores Aritméticos | Gabarito](./exercicios/2_operadores/com-resposta/01-Operadores-Aritméticos+(resolução).txt)
> - [Operadores Aritméticos | Respondido](./exercicios/2_operadores/op_aritmeticos.sql)
> 
> ### Comparação
>
> > | Igual | Maior que | Menor que |  Maior ou igual que | Menor ou igual que | Diferente de |
> > | --- | --- | --- | --- | --- | --- | 
> > | = | > | < | >= | <= | <> |
>
> **Exercícios**
>
> - [Comparação](./exercicios/2_operadores/sem-resposta/02-Operadores-Comparação.txt)
> - [Comparação | Gabarito](./exercicios/2_operadores/com-resposta/02-Operadores-Comparação+(resolução).txt)
> - [Comparação | Respondido](./exercicios/2_operadores/op_comparacao.sql)
> 
> ### Lógicos
>
> > | E | Ou | Negação | Entre | Em  | Semelhante a | Semelhante a (maiúsculas e minúsculas) | É nulo |
> > | --- | --- | --- | --- | --- | --- | --- | --- |
> > | AND | OR | NOT | BETWEEN | IN | LIKE | ILIKE | IS NULL |
> 
> **Exercícios**
>
> - [Lógicos](./exercicios/2_operadores/sem-resposta/03-Operadores-Lógicos.txt)
> - [Lógicos | Gabarito](./exercicios/2_operadores/com-resposta/03-Operadores-Lógicos+(resolução).txt)
> - [Lógicos | Respondido](./exercicios/2_operadores/op_logicos.sql)
>
> ### Desafio | Operadores
> 
> **Exercícios**
> > - [Desafio](./exercicios/2_operadores/sem-resposta/04-Operadores-Desafio.txt)
> > - [Desafio | Gabarito](./exercicios/2_operadores/com-resposta/04-Operadores-Desafio%20(resolução).txt)
> > - [Desafio | Respondido](./exercicios/2_operadores/op_desafio.sql)
>
## Funções agregadas
> 
> São funções semelhantes às utilizadas nas planilhas de excel para contagem, mínimo, máximo e média de uma coluna.
> 
> >| Contagem | Soma  | Mínimo | Máximo | Média |
> >| --- | --- | --- | --- | --- | 
> > | COUNT() | SUM() | MIN() | MAX() | AVG() |
> 
> - [Funções agregadas](./exercicios/3_funcoes-agregadas/sem-resposta/01-Funções+agregadas-Funções+agregadas.txt)
> - [Funções agregadas | Gabarito](./exercicios/3_funcoes-agregadas/com-resposta/01-Funções+agregadas-Funções+agregadas+(resolução).txt)
> - [Funções agregadas | Respondido](./exercicios/3_funcoes-agregadas/func_agregadas.sql)
> 
> ### GROUP BY
>
> - [Group By](./exercicios/3_funcoes-agregadas/sem-resposta/02-Funções+agregadas-GROUP+BY.txt)
> - [Group By | Gabarito](./exercicios/3_funcoes-agregadas/com-resposta/02-Funções+agregadas-GROUP+BY+(resolução).txt)
> - [Group By | Respondido](./exercicios/3_funcoes-agregadas/group_by.sql)
>
> ### HAVING
>
> - [Having](./exercicios/3_funcoes-agregadas/sem-resposta/03-Funções+agregadas-HAVING.txt)
> - [Having | Gabarito](./exercicios/3_funcoes-agregadas/com-resposta/03-Funções+agregadas-HAVING+(resolução).txt)
> - [Having | Respondido](./exercicios/3_funcoes-agregadas/having.sql)
>
> ### Desafio | Funções Agregadas
> 
> > - [Desafio](./exercicios/3_funcoes-agregadas/sem-resposta/04-Funções+agregadas-Desafio.txt)
> > - [Desafio | Gabarito](./exercicios/3_funcoes-agregadas/com-resposta/04-Funções+agregadas-Desafio%20(resolução).txt)
> > - [Desafio | Respondido](./exercicios/3_funcoes-agregadas/desafio.sql)
>
## Joins
>
> São junções realizadas entre duas tabelas do BD a partir de uma coluna em comum. É o comando utilizado para relacionar duas tabelas. 
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
> > 1. Seleção das colunas do enunciado(region | visitas)
> > 2. Declaração das tabelas e seus relacionamentos (fun | cus | reg)
> > 3. Ordenação da saída (region | visitas)
>## Tipos
> 
> ### Left Join | **Mais utilizado na prática**
> 
>  Seleção de todos os dados de uma coluna da tabela esquerda + todos os dados existentes na mesma coluna (match) da tabela direita.
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
>  Seleção de todos os dados de uma coluna da tabela direita + todos os dados com match da tabela esquerda.
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
>  ### Desafio | Joins
> 
> > - [Desafio](./exercicios/4_joins/sem-resposta/03-Joins-Desafio.txt)
> > - [Desafio | Gabarito](./exercicios/4_joins/com-resposta/03-Joins-Desafio%20(resolução).txt)
> > - [Desafio | Respondido]()
> 
## Unions | Quinta
>
> ### Comandos
>
> ### Tipos
>
> ### Exemplos
>
## Subqueries | Sexta
>
> ### Tipos
>
> ### Exemplos
>
## Tratamento de dados | Sábado
>
> ### Comandos
>
> ### Conversão de unidades
>
> ### Tratamento Geral
>
> ### Tratamento de Texto
>
> ### Tratamento de Datas
>
> ### Funções
>
## Manipulação de tabelas | Domingo
>
> ### Tabelas | Geral
>
> - #### Criação
>
> - #### Deleção
>
> ### Linhas
>
> - #### Inserção
>
> - #### Atualização
>
> - #### Deleção
>
> ### Colunas
>
> - #### Inserção
>
> - #### Atualização
>
> - #### Deleção
>
## Projeto 1 | Dashboard de acompanhamento de vendas | Segunda
>
> ### Queries
>
> ### Gráficos
>
## Projeto 2 | Análise de perfil dos clientes | Terça
>
> ### Queries
>
> ### Gráficos
>

## Certificado
>

## Links ou referências
>
> - [Operadores SQL | Oracle](https://docs.oracle.com/cloud/help/pt/analytics-cloud/ACSMD/GUID-4EE8C58D-391B-46A9-B0B3-9FA91B8159D1.htm#BILUG664)
> - [SQLite](https://www.sqlite.org/lang.html)