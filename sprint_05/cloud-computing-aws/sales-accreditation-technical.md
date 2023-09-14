## Sales Accreditation Technical | Notes

### Módulo 2: Introdução às tecnologias essenciais da AWS

- Benefícios da computação em nuvem
    
    - Elasticidade 
    - Controle
    - Flexibilidade
    - Integrado
    - Confiável
    - Seguro
    - Econômico
    - Fácil de começar

- [Infraestrutura global da AWS](https://aws.amazon.com/pt/about-aws/global-infrastructure/)
- [AWS Docs](https://docs.aws.amazon.com/)
- [Categorias de produtos](https://aws.amazon.com/pt/products)
- [Modelo de Responsabilidade Compartilhada](https://aws.amazon.com/pt/compliance/shared-responsibility-model/)

#### Tecnologias essenciais: computação 

- **Elastic Computing (EC2):** computação redimensionável
- **Elastic Computing Auto Scaling:** aumento ou diminuição de instâncias
- **Elastic Load Balancing (ELB):** distribuição do tráfego de entrada
- **Elastic Container Service:** execução de aplicativos em um cluster gerenciado.
- **Elastic Kubernetes Service:** execução de aplicativos Kubernetes na AWS e no local.
- **AWS Lambda:** execução de código em resposta a eventos, sem a necessidade de um servidor.

> - Os diferentes [tipos de instâncias](https://aws.amazon.com/pt/ec2/instance-types/) são divididos nas seguintes categorias gerais:
>    
>     - Propósitos gerais
>         - Para esta categoria, temos as seguintes famílias: Mac, T, M, A.
>         - Cada família tem uma geração diferente contendo features levemente diferentes, como por exemplo, a família T de instâncias contêm as gerações T4g, T3, T3a e T2.
>         - Para cada geração, cada tipo de instância é designado por um tamanho diferente, podendo ser do tamanho nano, pequeno, extra grande, etc.
>     - Computação otimizada
>     - Memória otimizada
>    - Computação acelerada
>     - Armazenamento otimizado
- [Serviços de computação AWS](https://aws.amazon.com/pt/products/compute/)

#### Tecnologias essenciais: armazenamento 

- **Simple Storage Service (S3):** armazenamento de objetos durável e dimensionável. As categorias para este tipo de serviço, são:
    - S3 Standard
    - S3 Standard Infrequent Access
    - S3 One Zone Infrequent Access
    - S3 Glacier Storage classes
    - S3 Intelligent Tiering 
    - [Categorias de Armazenamento S3](https://aws.amazon.com/pt/s3/storage-classes/)

- **Elastic Block Store (EBS):** armazenamento persistente em nível de bloco (tipo um HD das instâncias)
- **S3 Glacier:** arquivamento e backup de dados
- **Storage Gateway:** integração do armazenamento da nuvem com as cargas de trabalho locais (faz a ponte entre os servidores on-premises e os da nuvem)
- **Elastic File System (EFS):** armazenamento de arquivos para instâncias do EC2
- **File Storage (FSx):** armazenamento de arquivos para sistemas de arquivo amplamente usados

#### Tecnologias essenciais: banco de dados

- **Relational Database Service (RDS):** capacidade econômica e redimensionável que suporta 6 tipos de motores de BD (Amazon Aurora, PostgreSQL, MySQL, Oracle DB, MariaDB, SQL Server).
- **DynamoDB:** No SQL DB com desempenho rápido e previsível.
- **ElastiCache:** Serviço de cache para recuperação rápida e gerenciada de informações.

- [Databases AWS](https://aws.amazon.com/pt/products/databases/)

#### Tecnologias essenciais: redes

- **[Virtual Private Cloud](https://aws.amazon.com/pt/products/networking/):** configuração de uma rede virtual na nuvem.
- **Security Groups:** gerencie e controle o acesso às instâncias.
- **Network Access Control List (NACL):** gerenciamento e controle do acesso às sub-redes. 
- **Route 53:** serviço de DNS que provém o direcionamento de usuários finais para aplicativos da internet. Pega os endereços legíveis para humanos e transforma em números de IPs. 

#### Tecnologias essenciais: segurança

-> Proteção de Dados
    
- **Amazon Macie**
- **AWS Cloud HSM**
- **AWS Secrets Manager**
- **AWS KMS**
- **AWS Certificate Manager** 

-> Gerenciamento de Identidade e Acesso (IAM)

- **[AWS IAM](https://aws.amazon.com/pt/iam/)**
- **AWS Single Sign-On**
- **AWS Organizations**
- **AWS Resource Access Manager**
- **AWS Directory Service**
- **Amazon Cognito**


-> Proteção de Infraestrutura

- **AWS Network Firewall**
- **AWS Shield**
- **AWS WAF**
- **AWS Firewall Manager**

-> Conformidade (Compliance)

- **AWS Artifact**
- **AWS Audit Manager**
- [Compliance](https://aws.amazon.com/pt/compliance/)

-> Detecção

- **Amazon GuardDuty**
- **Amazon Inspector**
- **AWS CloudTrail**
- **AWS Security Hub**
- **AWS Config**
- **AWS IoT Device Defender**

-> Resposta a incidentes 

- **Amazon Detective**
- **CloudEndure Sisaster Recovery**

- [Segurança AWS](https://aws.amazon.com/pt/products/security/)

### Módulo 3: de serviços a soluções

- Introdução ao projeto da solução
    - [AWS Well-architected](https://aws.amazon.com/pt/architecture/well-architected/)
- Abordagem dos desafios dos clientes
- Estratégias de migração
    - [AWS Application Migration Service](https://aws.amazon.com/pt/application-migration-service/)
- [Práticas recomendadas de arquitetura]
- Outros recursos do projeto da solução
- Solução proposta
- Recursos
    - [Biblioteca de Soluções AWS](https://aws.amazon.com/pt/solutions/)
    - [AWS Cloud Adoption Framework | Web Page](https://aws.amazon.com/pt/cloud-adoption-framework/)
    - [AWS Cloud Adoption Framework | PDF](https://d1.awsstatic.com/whitepapers/pt_BR/aws-cloud-adoption-framework_pt-BR.pdf)

### Módulo 4: apresentação das soluções da AWS aos clientes

- Sondagem
- Práticas recomendadas de reunião de clientes
- Maria apresenta a sua solução
- Fornecer uma prova de conceito
- Recursos

### Módulo 5: próximos passos

- Planejamento da migração
- Modernização
- Recursos

Módulo 6: recursos da rede de parceiros da AWS

Visão geral
Recursos da rede de parceiros da AWS
Teste de conhecimento e recursos

