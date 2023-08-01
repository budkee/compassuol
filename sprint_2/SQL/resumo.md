![sql]()

## Sumário | SQL

- [x] Setup
- [x] Fundamentos
- [ ] Lista de comandos
- [ ] Projeto 1 | Dashboard de acompanhamento
- [ ] Projeto 2 | 
- [ ] Links e outras referências
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

## Lista de Comandos
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
> O comando LIMIT é utilizado para 
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
> - [LIMIT](./exercicios/1_comandos/sem-resposta/04-Comandos+básicos-ORDER+BY.txt)
> - [LIMIT | Gabarito](./exercicios/1_comandos/com-resposta/04-Comandos+básicos-ORDER+BY+(resolução).txt)
> - [LIMIT | Respondido](./exercicios/1_comandos/order-by_resp.sql)
>
>

### Desafio | Busca regrada
> **Exercícios**
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
> **Exercícios**
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
> > - [Desafio | Respondido](./exercicios/3_funcoes-agregadas)
>
## Joins
>
> ### Comandos
> 
> ### Tipos
>
> ### Exemplos
> 
> - [Joins]()
> - [Joins | Gabarito]()
> - [Joins | Respondido]()
> 
## Unions
>
> ### Comandos
>
> ### Tipos
>
> ### Exemplos
>
## Subqueries
>
> ### Tipos
>
> ### Exemplos
>
## Tratamento de dados
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
## Manipulação de tabelas
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
## Projeto 1 | Dashboard de acompanhamento de vendas
>
> ### Queries
>
> ### Gráficos
>
## Projeto 2 | Análise de perfil dos clientes
>
> ### Queries
>
> ### Gráficos
>

## Certificado
>

## Links ou referências
>
> - [Documentação SQL | Oracle](https://docs.oracle.com/cloud/help/pt/analytics-cloud/ACSMD/GUID-4EE8C58D-391B-46A9-B0B3-9FA91B8159D1.htm#BILUG664)
> - [SQLite](https://www.sqlite.org/lang.html)