# Ciência de Dados | Analytics
## Sumário
> - [O que é Ciência de Dados?](#o-que-é-ciência-de-dados)
> - [Diferença entre papéis envolvidos em Big Data](#diferença-entre-papéis-envolvidos-em-big-data)
> - [Tipos de Dados](#tipos-de-dados)
> - [Banco de Dados](#banco-de-dados)
> - [Data Lake | Arquitetura Lambda](#data-lake--arquitetura-lambda)
> - [Links e Referências](#links-e-referências)
>

## O que é Ciência de Dados?
>
> A Ciência de Dados é uma área interdisciplinar envolvendo três grandes áreas: Ciência da Computação, Matemática e Estatística e Especialização Científica, sendo este último variando de acordo com o tema.
>
> Seu estudo e aplicação envolvem todo processo da análise de dados de modo a fornecer insights para tomadores de decisão de instituições com a cultura voltada a dados.
>
> ![relação de venn](https://abracd.org/wp-content/uploads/2019/04/diagrama-data-science.png)
>
> A área existe faz mais de 30 anos, entretando, foi somente com a popularização do [Big Data](big-data_sobre.md) e crescimento do [Maching Learning](ml-e-data-ops.md) obteve maior destaque. Assim, podemos enxergar ambas tecnologias como a **matéria-prima** e a **ferramenta de análise**, respectivamente, da Ciência de Dados.
> 

## Diferença entre papéis envolvidos em Big Data
>
> Dentro do processo de extração, transformação e carregamento de dados ([ETL](integracao-de-dados-etl.md)) existem alguns papéis a serem desempenhados de acordo com a área de atuação dos profissionais. 
>
> São eles: 
> - [Cientista de Dados](#cientista-de-dados)
> - [Arquiteto de Solução para Dados](#arquiteto-de-solução-para-dados)
> - [Engenheiro de Dados](#engenheiro-de-dados)
> - [Desenvolvedores](#desenvolvedores)
>
> 
### Cientista de Dados
>
> É aquele que retira os insights dos dados e agrega valor ao produto ou serviço da instituição. Este profissional deve ter uma boa base e um vasto conhecimento em:
> 
> - Ciência da Computação
> - Estatística
> - Modelagem
> - Análises
> - Matemática
> - Maching Learning
> - Banco de dados 
> - Business Intelligence 
> - Ciências Sociais ou Física
>
> Entretanto, para facilitar o encontro de pessoas com esse tipo de conhecimento, a comunidade decidiu criar perfis do Cientista de Dados para as áreas de maior interesse do profissional, como:
>
> - Desenvolvedor: focado em problemas técnicos.
> - Estatístico: focado em problemas estatísticos.
> - Businessperson: focado na geração de valor à instituição.
> 
> > Independente da segregação de perfis dos Cientistas de Dados é fundamental a participação de outros profissionais (Cientistas, Arquitetos, Engenheiros de Dados e Desenvolvedores) da área para o cumprimento dos objetivos do projeto.
> 
### Arquiteto de Solução para Dados
>
> O objetivo do Arquiteto de Soluções é projetar como os dados podem obter lucros.
> 
### Engenheiro de Dados
>
> No caso do Engenheiro de Dados, seu objetivo consiste em implementar o projeto através de componentes tecnológicos. Para isto, este profissional deve possuir um amplo e profundo conceito sobre as ferramentas de implantação e funcionamento dos softwares utilizados.
> 
### Desenvolvedores
>
> Para os Desenvolvedores, o seu propósito se sustenta como ponte entre o Arquiteto e o Engenheiro, sugerindo `necessidades e angustias` pela visão do cliente, ao lado do Arquiteto, bem como `melhorias ou alternativas de implementação do sistema`, ao lado do Engenheiro.
>
> 

### Trilhas pela Compasso
> 
> Algumas das trilhas que a Compasso desenvolve envolvem:
>
> - Conceito | Para todas as trilhas
> - Engenheiro de Dados | AWS, Azure e GCP
> - Ciência de Dados | Negócio, Estatística e ML
>
## Tipos de Dados
>
> Podemos categorizar os tipos de dados das seguintes formas:
> 
> 1. Valor literal
> 2. Arquivos
> 3. Estrutura e Relacionamento
> 
>
> ### 1. Valores literais
>
> São exemplos:
> 
> - `letras ou caracteres`
> - `números`
> - `texto ou cadeia de caracteres`
>
> ### 2. Arquivos
>
> Podemos citar: 
> 
> - `imagem`
> - `vídeo`
> - `áudio`
>
> ### 3. Estrutura
>
> Também podemos tipificar os dados de acordo com a sua estrutura e formato de relacionamento. São eles:
> 
> - Estruturado | SQL
> - Não Estruturado ou Semi Estruturado | NoSQL
>
> ### Dados Estruturados | SQL
> 
> Possuem uma organização rígida e bem definida através de um planejamento e projeção da arquitetura e tipos admitidos no armazenamento.
>
> Podemos entender, portanto, que o registro feito em um cadastro, através de um formulário, por um usuário, irá conter um relacionamento entre os dados inseridos.
>
> **Exemplo**
> 
> Temos em um esquema, dessa forma, as tabelas contendo seus respctivos campos(atributos) e tipos(formatos), com a estrutura e relacionamento bem definidos.
>
> 
> ### Dados Não Estruturados | NoSQL
>
> Neste caso, os dados não possuem uma relação ou estrutura previamente planejada, sendo, por sua vez, caracterizados como flexíveis e dinâmicos. Sua estrutura geralmente é definida no momento que se utilizam os dados. 

>
> ### Dados Semi Estruturados | NoSQL
>
> Para categoria de dados semi-estruturados, temos uma representação heterogênea, podem até ter uma estrutura, mas ainda sim é flexível. Isso facilita o controle e permite que seus relacionamentos sejam adaptáveis.
>
> Alguns exemplos de formatos de arquivos semi-estruturados são: [xml](https://aws.amazon.com/pt/what-is/xml/#:~:text=A%20Extensible%20Markup%20Language%20(XML)%20%C3%A9%20uma%20linguagem%20de%20marca%C3%A7%C3%A3o,de%20computa%C3%A7%C3%A3o%20por%20contra%20pr%C3%B3pria.), [json](https://www.json.org/json-pt.html), [rdf](https://pt.wikipedia.org/wiki/Resource_Description_Framework) e [owl](https://www.w3.org/OWL/).
>
> ### Em suma | Estruturas de Dados
>
> ![dados-estrutura](https://universidadedatecnologia.com.br/wp-content/uploads/2019/02/banner_auxiliar_dados-1.png)

## Dado, Informação, Conhecimento e Sabedoria para Tomada de Decisões
> 
> O dado, em seus variados tipos e formatos, só será considerado como informação caso ele venha provido de sentido.
>
> > "A palavra **Leandro** para os computadores é apenas uma `sequência de letras` quando interpretada como dado bruto, mas é um `nome` quando considerada como **informação** ou **dado processado**"
>
> Entretanto, é possível que o dado seja processado e ainda sim não contenha informação.
>
> Também é comum observar a importância do processamento do dado ao realizar o controle de estoque de uma loja de roupas, por exemplo, ao catalogar o código de barras daquele produto no sistema da empresa.
>
> Portanto, uma informação demanda uma interpretação, processamento ou análise de dados brutos.
>
> ### Gerando Conhecimento
>
> O conhecimento só será gerado a partir da interpretação dos dados brutos, gerando assim a informação, que por sua vez torna-se conhecimento através da contextualização do minimundo da informação. A pirâmide a seguir resume bem a estrutura do processo:
> 
> ![dado-informação-conhecimento-sabedoria](https://universidadedatecnologia.com.br/wp-content/uploads/2019/01/Data-information-knowledge-wisdom.png)
>
> 

## Data Lake e Arquitetura Lambda
>
> Podemos definir um [Data Lake](sist-de-armazenamento.md) através de 3 características:
> 1. Deve ser um único repositório compartilhado de dados (o armazenamento é normalmente feito pelo [Hadoop HDFS](sist-de-armazenamento.md)).
> 2. Inclui capacidades de orquestração e agendamento de tarejas ([jobs](https://docs.aws.amazon.com/pt_br/glue/latest/dg/etl-jobs-section.html)).
> 3. Deve conter um conjunto de aplicativos ou workflows para consumir, processar ou agir de acordo com os dados.
>
> ### Arquitetura Lambda
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


## Links e Referências
- [Conceitos de Data & Analytics I](data-e-analytics_conceitos.pdf)