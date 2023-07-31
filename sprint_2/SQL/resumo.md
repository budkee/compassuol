![sql]()

## Sumário | SQL

- [ ] Setup
- [ ] Fundamentos
- [ ] Lista de comandos
- [ ] Conceitos básicos sobre Dados
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
>
> ### Comparação
>
> ### Lógicos
>
## Funções agregadas
>
> ### GROUP BY
>
> ### HAVING
>
## Joins
>
> ### Comandos
>
> ### Tipos
>
> ### Exemplos
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