## Fundamentos de Data Analytics

- Como identificar a solução de análise de dados que melhor atenda aos seus requisitos?
- Como planejar e executar uma estratégia para implementá-la?

## Introdução 

### O que é Avaliação (Análise) de dados?

> É um processo de compilar, processar e analisar dados para que você possa tomar decisões.

    → Classificar
    → Agregar
    → Unir e aplicar a lógica do negócio

### Solução de avaliação de dados brutos

Os componentes que envolvem um processo de avaliação de dados são:

- Coleta (Ingerir ou Coletar): montar dados de várias fontes.
- Armazenamento (Armazenar): manter os dados em repositórios.
- Processamento (Processar): manipular dados nas formas que convêm.
- Análise (Analisar): extrair as informações relevantes.
- Entrega (Consumir ou Visualizar): apresentar gráficos e demonstrar valores por relatórios e dashboards.

"Quanto mais próximo o armazenamento dos dados estiverem do sistema de processamento, melhor será o desempenho desse sistema." - AWS

### Fontes de dados

- Dados gerados por humanos
- Dados gerados por máquinas

### Benefícios da Análise de dados em grande escala

- Personalizar ofertas aos clientes;
- Detectar fraudes em transações;
- Detectar (padrões de uso) ameaças à segurança;
- Comportamento do usuário;
- Modelagens e previsões financeiras;
- Alerta (de problemas) em tempo real;

### Desafios de Data Analytics (5Vs)

- Volume
- Velocidade
- Variedade
- Veracidade (Procedência dos dados)
- Valor

#### Procedência dos dados

> Conhecer a cadeia de custódia dos dados

## Volume | Armazenamento

> Quando as empresas têm mais dados do que conseguem processar e analisar, elas têm um problema de volume.
>

### Formas de agregar dados

#### Dados estruturados (10%)

> são volumes de dados que se organizam de maneira relacional e seguem uma regra previamente definida, possuindo atributos desejáveis em uma estratégia de movimentação.
> 
> Organizadas em:

- Tabelas
    - Linhas
    - Colunas
- Arquivos:
    - .csv
    - .xlsx


#### Dados semiestruturados (10%)
> 
> Não apresentam uma estrutura lógica tão bem definida mas se organizar a uma regra de interesse, todo mundo se encontra
> 
> Organizadas em:
- Conjunto de chaves e valores
    - nome_da_chave: valor
- Arquivos
    - .json
    - .xml
    - .csv
    - .xlsx

#### Dados não-estruturados (80%)
>
> *O que é, o que é, indica desempenho e movimentação de um objeto num determinado período de tempo?* 
> 
> Organizadas em:
    
    void(); // não tem uma organização definida. é o espaço com um tanto escalável de dados tem que colocar tags(*KPIs*) 

> Podem ser encontrados em forma de arquivos ou objetos:
- emails;
- fotos;
- documentos textuais;
- videos;


## Amazon S3

É um serviço da AWS que realiza o mapeamento de dados, como colocam eles mesmos:

> *"Como a combinação de um bucket, chave e ID de versão identifica exclusivamente cada objeto, você pode considerar o Amazon S3 como um mapa de dados básico entre “bucket + chave + versão” e o próprio objeto."*

**Free tier**: No primeiro ano, inclui 750 horas de uso de instâncias t2.micro (ou t3.micro nas regiões em que o t2.micro está indisponível) em AMIs de nível gratuito por mês, 30 GiB de armazenamento do EBS, 2 milhões de E/S, 1 GB de snapshots e 100 GB de largura de banda para a Internet

Para realizar a comunicação, cada objeto pode ser referenciado através de (i) endpoints de serviços web, (ii)nome do bucket, (iii) da chave e (iv) da versão.

### Benefícios

- Desacoplamento entre o armazém e o processador;
- Arquitetura de dados centralizada;
- Integração com serviços AWS sem cluster e sem servidor;
- Interfaces de programação de aplicativos (APIs) personalizadas;

### Data Lakes;

### Introdução aos métodos de armazenamento de dados.

### Velocidade – Processamento de dados

Introdução aos métodos de processamento de dados;
Introdução ao processamento de dados em batch;
Introdução ao processamento de dados em stream.

### Lição 4
Variedade – estrutura e tipos de dados
Introdução a armazenamento de dados de origem;
Introdução a datastores estruturados;
Introdução a datastores semiestruturados e não estruturados.

### Lição 5
Veracidade – limpeza e transformação
Compreensão de integridade de dados;
Compreensão de consistência de bancos de dados;
Introdução ao processo de ETL.

### Lição 6
Valor – geração de relatórios e business intelligence
Introdução à análise de dados;
Introdução à visualização de dados.
