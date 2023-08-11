## Data as a Service (Daas) Dados como serviço

### Sumário
- [Data as a Service (Daas) Dados como serviço](#data-as-a-service-daas-dados-como-serviço)
  - [Sumário](#sumário)
- [O que é?](#o-que-é)
- [Exemplos de aplicações na sociedade](#exemplos-de-aplicações-na-sociedade)
- [Arquitetura Daas](#arquitetura-daas)
- [Benefícios da Daas](#benefícios-da-daas)
- [Um dos principais problemas de Daas](#um-dos-principais-problemas-de-daas)
- [Arquiteturas Modernas de Big Data](#arquiteturas-modernas-de-big-data)
  - [Data Lakehouse](#data-lakehouse)
  - [Data Mesh](#data-mesh)
  - [Arquitetura Lambda](#arquitetura-lambda)

## O que é?
>
> Data as a Service (Daas) ou Dados como Serviço, é uma estratégia de implementação, utilizada por gestores e tomadores de decisões de uma instituição (pública, privada ou ongs), com o intuito de embasar a escolha no momento da decisão de negócio, sendo tratada como um ativo de negócio de muito poder, se bem utilizada.
> A estratégia atualmente oferecida no mercado é comumente conhecida pelo termo API ou, na tradução literal, Programa de Interface da Aplicação. Assim, o gestor ou analista do setor pode melhorar seu embasamento no momento em que realiza uma decisão de negócio através de dados.
> 
> > [Voltar para o topo](#sumário)
> 


## Exemplos de aplicações na sociedade
>
> - [Clarivate](https://clarivate.com/): seu mercado de atuação engloba a entrega de informações de grande parte da pesquisa científica mundial, fornecendo indicadores de pesquisa e desempenho acadêmico, metodologias de implementação de estratégias, revisão bibliográfica simplificada, transformação analítica de dados, entre outros serviços.
> - [Crunchbase](https://www.crunchbase.com/): minera e oferta dados para o mercado empresarial, oferecendo (i)busca, monitoramento e rastreio de empresas cadastradas em seus BDs, (ii)busca e fechamento de negócios via plataforma, (iii)criação de estratégias para campanhas de marketing, entre outros serviços.
> - [Tracxn](https://tracxn.com/): serviços voltados aos investidores do mercado financeiro, oferecendo controle da gestão de clientes e inteligência para empresas de diversos setores da informação.
>
> > [Voltar para o topo](#sumário)


## Arquitetura Daas
> 
> A arquitetura do serviço ocorre em 3 etapas: Extração e centralização de Dados, Criação da API como serviço, Chamada API.
>
> ![arq-daas](https://www.tibco.com/sites/tibco/files/media_entity/2020-04/daas-data-as-a-service-diagram.svg)
>
> 1. **Extração e centralização de Dados**
> 
> Armazenamento - Camada de Virtual de Dados
> 
> O principal objetivo da camada virtual de dados é buscar dados de vários locais(servidores ou computadores, como Data Lakes, Data Meshs, Data Warehouses) e centralizar essa busca em um só local(um DataHub), através da configuração da porta de saída de cada máquina.
> 

>2. **Criação de serviços API**
> 
> > Fluxo ocorrendo do DataHub para o Gerenciamento de APIs.
> 
> Neste momento, é necessário fazer a configuração de diversos componentes do sistema, como:
> 
> - Registro dos Dados
> - Segurança de Acesso
> - Representação dos Dados (schemas, por exemplo)
> - Documentação
> - Orquestração para organização de Dados
> - Caching (para fornecer dados com maior velocidade)
> - Analytics (agregação e visualização de dados pronta para análise)
>
> Após a configuração desses componentes, não é necessário ir até o Armazenamento (Data Lake ou Data Warehouse) buscar o dado, pois isto já foi configurado no gerenciamento de APIs, gerando um tempo menor de busca.
>

> 3. **Chamada API**
>
> É o momento que o usuário realiza a chamada da API através de um evento(click, por exemplo) e ativa toda configuração de seu script, executando o envio correto dos dados demandados.
>
> Pode ocorrer por 3 vias
>
> - Usuários externos
> - Requisições de Aplicativos Mobile
> - Requisições de Aplicações Web
>
> > [Voltar para o topo](#sumário)
> 
## Benefícios da Daas
>
> - Monetização de Dados
> - Redução de Custos
> - Caminho mais rápido para inovação
> - Agilidade no Processo de Decisão Baseado em Dados
> - Menor Risco no Uso de Dados
> - Criação de uma cultura Data-Drive(Orientada à Dados)
> 
> > [Voltar para o topo](#sumário)

## Um dos principais problemas de Daas
>
> - Vieses ou tendências humanas
>
>
> > [Voltar para o topo](#sumário)

## Arquiteturas Modernas de Big Data
> 
> As principais arquiteturas modernas(2023) são: 
> 
> - [Data Lakehouse](#data-lakehouse)
> - [Data Mesh](#data-mesh)
>
>
>![data-lakehouse](https://www.tableau.com/sites/default/files/2021-06/Databricks_data_lakehouse.png)

### Data Lakehouse
>
> Um Data Lakehouse é a combinação do [Data Warehouse](#data-warehouse) e o [Data Lake](#data-lake). A idéia é flexibilizar as possibilidades de operações com dados estruturados ou não estruturados, permitindo trabalhar com uma maior variabilidade de dados.
> 
> - [Artigo | Lakehouse: A New Generation of Open Platforms that Unify Data Warehousing and Advanced Analytics](https://databricks.com/wp-content/uploads/2020/12/cidr_lakehouse.pdf)
>

> #### Data Lake
> 
> Podemos definir um [Data Lake](sist-de-armazenamento.md) através de 3 características:
> 1. Deve ser um único repositório compartilhado de dados (o armazenamento é normalmente feito pelo [Hadoop HDFS](sist-de-armazenamento.md)).
> 2. Inclui capacidades de orquestração e agendamento de tarejas ([jobs](https://docs.aws.amazon.com/pt_br/glue/latest/dg/etl-jobs-section.html)).
> 3. Deve conter um conjunto de aplicativos ou workflows para consumir, processar ou agir de acordo com os dados.

> #### Data Warehouse
>
> É um sistema de armazenamento que coleta e harmoniza grandes quantidades de dados de muitas fontes de dados. 
>
> ## Objetivo
>
> > Alimentar a inteligência dos negócios através de relatórios, análises, entre outros tipos de suporte aos requisitos do negócio.
>
> A imagem abaixo esquematiza todo o processo do Cientista de Dados. 
> 
> ![j](https://crehana-blog.imgix.net/media/filer_public/46/e9/46e9dc7e-7d27-43a3-8919-e54a4c42872b/web_y_empresas.png?auto=format&q=50) 
>
> O processo começa com a coleta de relatórios de todos os módulos atuantes da empresa, ou sistemas transacionais. 
> 
> Em seguida ocorre a extração, transformação e carregamento dos dados (ETL) ao DW de maneira estruturada.
>
> Após a coleta e armazanamento no DW, ocorre a conexão com ferramentas de análise para, por fim, realizar a entrega de relatórios gerando insights aos tomadores de decisões.
>
> ## Como se cria um Data Warehouse?
> Para se criar um Data Warehouse, deve-se utilizar algum **Sistema de Gerenciamento de Banco de Dados (SGBD)**, como:
>
> ![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white) ![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white) ![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white) ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) 
>
> Em termos práticos, não existe um DW, apenas seu conceito que é concretizado pela manipulação e processamento das informações coletadas via um SGBD.
> 
> ## Benefícios do DW
>
> - Melhoria na análise de negócios
> - Consultas Mais Rápidas
> - Melhoria da qualidade dos dados
> 
> ## Ferramentas | Open Source
> 
> - [Apache Hive](https://hive.apache.org/): ferramenta para infraestrutura de DW que apresenta o resumo de dados e queries em *ad-hoc*
> ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) 
> ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
>
> > [Voltar para o topo](#sumário)

### Data Mesh
> 
> ## Soluções Comerciais
>
> Data Mesh, assim como outras arquiteturas, é um conceito que pode ser implementado por diversas ferramentas. Algumas que podemos citar são:
>
> **Descobrindo Dados**
> - [Microsoft Purview](https://learn.microsoft.com/pt-br/purview/purview)
>
> **Consultas em domínios**
> - [Synapse](https://azure.microsoft.com/en-us/products/synapse-analytics#overview)
> - [Azure Virtual Network Peering]()
>
> > [Voltar para o topo](#sumário)


### Arquitetura Lambda
>
> É um modelo de arquitetura BigData proposto por [Nathan Marz](http://nathanmarz.com/about/). 
>
> O modelo é amplamente utilizado por não depender de soluções tecnológicas específicas para realizar o processo de [ELT](integracao-de-dados-etl-elt.md), pois assim como o processo, a Arquitetura Lambda é um conceito que pode ser aplicado de diversas maneiras.
>
>
> ![arq-lambda](https://www.dataex.com.br/wp-content/uploads/2019/07/Lambda-1024x576.png)
>
> Através dessa arquitetura podemos processar quantidades enormes de dados sem perder sua estrutura original (Batch Layer), disponibilizar visualização pré-calculadas de dados (Serving Layer) e compensar os intervalos de processamento entregando as informações em tempo real (Speed Layer).
> 
> Assim, a arquitetura é dividida em 3 camadas:
>
> 1. Batch Layer
> 2. Speed Layer
> 3. Serving Layer
> 
> Podemos representar a parte de processamento de dados pela camada de lote (Batch) e a de velocidade (Speed). 
> 
> **Camada de Lote**
> 
> Na camada Batch, os dados não podem ser atualizados ou sobrescritos (garantindo a atomicidade do armazenamento). Caso seja necessário fazer alguma alteração, é gerado e armazenado a nova versão do dado e sua versão antiga permanece no data lake. 
> 
> **Camada de Serviço**
> 
> Em seguida, os dados são "movidos" para camada de serviço (Serving Layer), onde são processados para gerar visualizações pré-calculadas com as informações ajustadas e organizadas de acordo com a necessidade do negócio. Os dados da camada de serviço somente são recebidos ao final do processamento em batch, gerando um intervalo de atualização entre eles.
>
> **Camada de Velociadade**
> 
> Visando compensar esse "atraso", a camada de velocidade chega com tudo, sem perder a sua atomicidade, e gerando as informações enquanto a batch termina o processamento. Seu funcionamento é um tanto quanto complexo, entretando, sua única preocupação é com os dados que ainda não foram entregues.
> 
> > [Voltar para o topo](#sumário)
>
