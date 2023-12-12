# AWS Cloud Practitioner Essentials

- [Blog de Arquitetura da AWS](https://aws.amazon.com/pt/blogs/architecture/)
- [Centro de Arquitetura](https://aws.amazon.com/pt/architecture/?cards-all.sort-by=item.additionalFields.sortDate&cards-all.sort-order=desc&awsf.content-type=*all&awsf.methodology=*all&awsf.tech-category=*all&awsf.industries=*all&awsf.business-category=*all)
- [AWS Well Archtected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html)
- [AWS Well Archtected Tool](https://aws.amazon.com/pt/architecture/well-architected/?wa-lens-whitepapers.sort-by=item.additionalFields.sortDate&wa-lens-whitepapers.sort-order=desc&wa-guidance-whitepapers.sort-by=item.additionalFields.sortDate&wa-guidance-whitepapers.sort-order=desc)

## Módulo 1: Introdução à Amazon Web Services

- Resumir os benefícios da AWS.
- Descrever as diferenças entre o **fornecimento sob demanda** e as **implantações de nuvem**.
- Resumir o modelo de pagamento conforme o uso.

### Anotações

- Amazon EC2: Servidores ou Instâncias que recebem solicitações.
- Modelo de pagamento: Pagar somente aquilo que utiliza.
- Computação em Nuvem: entrega de **recursos de TI** sob demanda pela internet com pagamento conforme o uso.
- Fardo Operacional de TI: como a empresa trata e utiliza os dados.

- Modelos de computação em Nuvem: 
    - On premises: implantação de nuvem privada, uso de datacenters privados
    - Cloud: Serveless applications, uso de datacenters da AWS.
    - Híbrida: conexão dos recursos on premises aos recursos cloud.

- Benefícios do Cloud Computing
    - Troque despesas iniciais por despesas variáveis
    - Elimina gastos com execução e manutenção em data centers
    - Elimina a advinhação da capacidade necessária
    - Econcomias de escala
    - Aumento da velocidade e agilidade operacional
    - Alcance global em minutos
- Resumir o modelo de pagamento conforme o uso.
    - O uso de um grande número de clientes = pagamento conforme o uso de preços mais baixos.

## Módulo 2: Computação na Nuvem | EC2, SNS e SQS

- Descrever os **benefícios do Amazon EC2** em um nível básico.
- Identificar os diferentes **tipos de instâncias do Amazon EC2**.
- Diferenciar entre as várias **opções de cobrança do Amazon EC2**.
- Resumir os **benefícios do Amazon EC2 Auto Scaling**.
- Resumir os **benefícios do Elastic Load Balancing**.
- Dar um **exemplo dos usos do Elastic Load Balancing**.
- Resumir as diferenças entre o **Amazon Simple Notification Service (Amazon SNS)** e o **Amazon Simple Queue Service (Amazon SQS)**.
- Resumir **outras opções de computação da AWS**.

### Anotações

- Benefícios do Amazon EC2
    - Servidores virtuais
        
        Multitenancy: compartilhamento de Hardware subjacente entre máquinas virtuais. Quem coordena esse compartilhamento (Multitenancy) é um Hypervisor gerenciado pela AWS. Ele isola as máquinas virtuais uma das outras. 
    - Flexível
    - Econômico
    - Rápido

- Tipos de instâncias do Amazon EC2
    - **Uso Geral**: aplicação com a necessidade de recursos computacionais(memória, rede e computação) de mesmo nível. Exemplos de utilização: servidores de jogos, aplicações, Back-end empresarial, banco de dados pequeno ou médio.
    
    - **Otimizada para computação**: servidores web de alto desempenho, servidores de jogos dedicados, servidores de aplicações de computação intensiva ou servidores com cargas de trabalho de *processamento em lote*.

    - **Otimizada para memória**: banco de dados de alto desempenho ou servidores com cargas de trabalho envolvendo a execução em tempo real de uma grande quantidade de dados não estruturados.

    - **Otimizada para armazenamento**: servidores com cargas de trabalho de aplicações de Data Warehouse e Sistemas de Processamento de Transação On-line (OLTP) de alta frequência. 

    IOPS: Operações de entrada/saída por segundo é uma métrica que mensura o desempenho de um dispositivo de armazenamento.

    - **Computação acerelada**: cálculos com números de ponto flutuante, computação gráfica e correspondência de padrões de dados. ideais para aplicativos gráficos, streaming de jogos e de aplicativos.

- Opções de cobrança do Amazon EC2
    - **Sob demanda** - Imprevisibilidade: paga apenas pela duração de execução da instância, sem necessidade de compromissos ou pagamentos iniciais. Também serve para ter uma referência do quanto se utiliza, para posterior utilização de cobranças mais econômicas, como o Savings Plans.

    - **Instâncias reservadas** - Desconto sob Previsibilidade (75% de desconto): cargas de trabalho constantes, com uso previsível, oferecendo até 75% de desconto em comparação ao preço sob demanda. 

    *Standard Reserved Instances*: É necessário saber o (i) Tipo e tamanho da instância: Por exemplo, m5.xlarge; (ii) Descrição da plataforma (sistema operacional): Por exemplo, Microsoft Windows Server ou Red Hat Enterprise Linux; (iii) Tenancy: Tenancy-padrão ou dedicado.

    *Instâncias reservadas conversíveis*: execução da EC2 em diferentes Zonas de Disponibilidades.

    - **Savings Plans** - Compromisso de gasto/hora computacional (72% de desconto): EC2 com preços baixos, porém é necessário se comprometer com o uso consistente por 1 ou 3 anos, medidos em dólar/hora. Pode chegar a uma economia de 72% no uso em comparação ao modelo sob demanda. Este modelo de cobrança também se aplica ao [AWS Fargate](https://aws.amazon.com/pt/fargate/) e ao [AWS Lambda](https://aws.amazon.com/pt/pm/lambda/).

    - **Instâncias Spot** - Computação não utilizada pela Amazon EC2 (90% de desconto): cargas de trabalho precisam tolerar interrupções, como cargas em batch/lote, pois caso a AWS necessite dessas instâncias, será notificado ao usuário 2 minutos antes da remoção.
    
    - **Hosts dedicados** - Ideal para manter a conformidade da licença: servidores físicos com capacidade de instância do EC2 totalmente dedicado ao uso do cliente, sendo também a opção mais cara. 

- Scalling do EC2
    - Dimensionamento: [Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/pt_br/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)
        - Scaling Dinâmico
        - Scaling Preditivo 

- Sistema de mensagens e enfileramento | SNS and SQS
    - Amazon Simple Notification Service (SNS): serviço de publicação/assinatura. Um editor (ponto de contato inicial) publica mensagens (encaminhamentos) aos assinantes (componentes da aplicação: servidores web, endereços de e-mail, funções AWS Lambda, etc...).

    - Amazon Simple Queue Service (SQS): serviço de enfileramento de mensagens. Usado para enviar, armazenar e receber mensagens entre componentes de software. O usuário ou serviço (ponto de contato inicial) recupera uma mensagem da fila (buffer), processa-a e a apaga da fila.

- AWS Lambda: serviço de computação sem servidor. Você faz o deploy do código e paga somente pelo tempo em que o código fica em execução. 
    - Exemplo: redimensionamento automático de imagens a partir do upload feito na nuvem.

    1. Você faz upload do código para o Lambda. 
    2. Você configura o código para ser acionado pelos eventos de uma origem como serviços da AWS, aplicações móveis ou endpoints HTTP.
    3. O Lambda executa o código somente quando acionado.
    4. Você paga apenas pelo tempo de computação que usar. No exemplo anterior de redimensionamento de imagens, você pagaria apenas pelo tempo de computação usado ao fazer upload de novas imagens. Fazer upload das imagens aciona o Lambda a executar o código da função de redimensionamento de imagem.

- Orquestração de Contêineres
    - [Amazon Elastic Container Service (ECS)](https://aws.amazon.com/ecs/)
    - [Amazon Elastic Kubernetes Service (EKS)](https://aws.amazon.com/eks/)
    - [AWS Fargate](https://aws.amazon.com/fargate/)

## Módulo 3: Infraestrutura Global e Confiabilidade

- Resumir os **benefícios da infraestrutura global da AWS**.
- Descrever o conceito básico de **Zonas de Disponibilidade**.
- Descrever os benefícios do **Amazon CloudFront** e dos **locais de borda**.
- Comparar métodos diferentes de **provisão de serviços** da AWS.

### Anotações

Fatores para a escolha da região
- Conformidade: "Por exemplo, se sua empresa exige que todos os dados residam dentro dos limites do Reino Unido, você deve escolher a Região Londres."
- Proximidade: Quando você verifica que a maioria de seus clientes residem em um local específico do mundo.
- Disponibilidade de recursos: Alguns recursos da AWS ainda não estão disponiveis para todas as regiões, como o Amazon Braket para computação quântica.
- Preços: "Com a estrutura tributária do Brasil, pode custar 50% mais caro executar a mesma carga de trabalho na Região São Paulo em comparação com a Região Oregon."

- [Mapa interativo das Regiões e Zonas de Disponibilidade](https://aws.amazon.com/pt/about-aws/global-infrastructure/regions_az/)

Zonas de Disponibilidade
- É um único data center ou um grupo de data centers, a depender da região deles.
- "Por exemplo, a Região América do Sul (São Paulo) é sa-east-1. Ela tem três Zonas de Disponibilidade: sa-east-1a, sa-east-1b e sa-east-1c."
- Prática recomendada pela AWS: executar aplicações em pelo menos duas zonas de disponibilidade.

- [Infraestrutura Global](https://aws.amazon.com/pt/about-aws/global-infrastructure/)

Locais de Borda via [Amazon CloudFront](https://aws.amazon.com/pt/cloudfront/)
- Content Delivery Network(CDN) da AWS.
- Entrega de dados de forma rápida através do DNS ou Amazon Route 53.
- Suponha que você possui clientes da China e sua aplicação está hospedada em uma instância de São Paulo. Uma vez ativado o Amazon CloudFront, ele irá recuperar o arquivo requisitado por meio do cache no local de borda da China e entrega ao cliente.

Interações com os serviços da AWS
- [Console de gerenciamento](https://aws.amazon.com/pt/console/)
- [Command Line Interface (CLI)](https://aws.amazon.com/pt/cli/)
- [Kits de desenvolvimento de software (SDKs)](https://aws.amazon.com/pt/what-is/sdk/)
- Outras ferramentas: [AWS Elastic BeansTalk](https://aws.amazon.com/pt/elasticbeanstalk/), [AWS Cloud Formation](https://aws.amazon.com/pt/cloudformation/) e [AWS Outposts](https://aws.amazon.com/pt/outposts/)

## Módulo 4: Redes

- Descrever os conceitos básicos de redes.
- Descrever a diferença entre recursos de redes públicas e privadas. 
- Explicar como um **gateway privado virtual** funciona usando um cenário real. 
- Explicar como uma **rede privada virtual (VPN)** funciona usando um cenário real.
- Descrever o benefício do **AWS Direct Connect**. 
- Descrever o benefício das **implantações híbridas (AWS Outposts)**. 
- Descrever as camadas de segurança usadas em uma estratégia de TI.
- Descrever os serviços que os clientes usam para interagir com a rede global da AWS.

### Anotações

Conectividade com a AWS: Amazon Virtual Private Cloud ([Amazon VPC](https://aws.amazon.com/pt/vpc/))
- Serviço de rede para definir limites para os seus recursos da AWS, através da criação de sub-redes.
- Gateway de Internet: conexão entre a VPC e a Internet.
- Gateway Privado Virtual: conexão de rede privada virtual (VPN). Permite que o tráfego da internet protegido (criptografado) ingresse na VPC.
- [AWS Direct Connect](https://aws.amazon.com/pt/directconnect/): solução de conexão privada entre um data center e uma VPC da AWS.
- "A conexão privada do AWS Direct Connect ajuda a reduzir os custos de rede e a aumentar a quantidade de largura de banda que pode trafegar pela rede."

Sub-redes e listas de controle de acesso à rede
- Sub-redes são locais isolados de uma VPC onde você pode agrupar os recursos com base nas necessidades operacionais ou de segurança. Elas podem ser públicas(site e-commerce) ou privadas(banco de dados, por exemplo).
- Tráfego de rede: são realizados por meio de pacotes de dados. Este pacote entra e sair por um gateway de internet, por exemplo, e, antes de poder entrar ou sair de uma sub-rede, ele verifica se existem permissões. Essas permissões indicam quem enviou o pacote e como ele quer se comunicar com os recursos daquela sub-rede. 
- [Lista de controle de acesso (ACL) de rede](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html): responsável por verificar as permissões de pacotes das sub-redes. É, em outras palavras, um firewall virtual stateless. Por padrão ela permite todo acesso de entrada/saída.
- Grupos de Segurança: responsáveis por verificar as permissões de pacote para uma instância EC2. Também é um firewall virtual stateful. Por padrão ele nega todo novo acesso a instância, é necessário configurar novas entradas/saídas.

## Módulo 5: Armazenamento e BD

- Resumir o conceito básico de armazenamento e bancos de dados.
- Descrever os benefícios do Amazon Elastic Block Store (Amazon EBS).
- Descrever os benefícios do Amazon Simple Storage Service (Amazon S3).
- Descrever os benefícios do Amazon Elastic File System (Amazon EFS).
- Resumir várias soluções de armazenamento.
- Descrever os benefícios do Amazon Relational Database Service (Amazon RDS).
- Descrever os benefícios do Amazon DynamoDB.
- Resumir vários serviços de banco de dados.

### Anotações

Amazon Elastic Block Store (EBS)
- Serviço de persistência de dados de uma instância EC2.

Amazon Simple Storage Service (S3)
- Serviço de armazenamento de dados a nível de objetos. 
- Um objeto possui 3 propriedades:
    - Dados: Informação
    - Metadados: Informações sobre o objeto (tipo, tamanho, data de criação, etc...)
    - Chave: URI, Endpoint
- O serviço possui categorias para pagar de acordo com as suas necessidades sem eliminar o modelo pay-as-you-go.
    - [Classes de pagamento do S3](https://aws.amazon.com/pt/s3/storage-classes/)
    Você deve considerar os seguintes pontos ao selecionar uma categoria:
        - Com que **frequência** você planeja recuperar seus dados?
        - Seus dados precisam estar muito ou pouco **disponíveis**?

Amazon Elastic File System (EFS)
- Sistema de armazenamento de arquivos que está distribuído em pelo menos 3 Zonas de Disponibilidade.
- É semelhante ao EBS, entretanto é possível conectar em várias instâncias EC2.

Amazon Relational Database Service (RDS)
- Serviço de execução de Bancos de Dados Relacionais na AWS.
- Seus mecanismos disponíveis são:
    - Amazon Aurora (compatível e com o MySQL e PostgreSQL)
    - PostgreSQL
    - MySQL
    - MariaDB
    - Oracle Database
    - Microsoft SQL Server

Amazon DynamoDB
- Serviço de execução de Bancos de Dados Não Relacionais pela AWS.

Amazon Redshift
- Serviço de Data Warehouse utilizado para análises históricas de Big Data.

Amazon Database Migration Service (DMS)
- Serviço de migração de dados entre BDs, por vias **homogêneas** ou **heterogêneas**.

Amazon DocumentDB
- Serviço de BD compatível com cargas de trabalho do MongoDB.

Amazon Neptune
- Serviço de BD de grafo, geralmente utilizado como mecanismos de recomendação, detecção de fraude e grafos de conhecimento.

Amazon Quantum Ledger Database (QLDB)
- Serviço de BD, por armazenamento em bloco, para verificar o histórico completo de todas as alterações feitas nos dados da aplicação.

Amazon Managed Blockchain
- Serviço de criação e gerenciamento de redes de blockchain com framewokrs de código aberto.

Amazon ElastiCache
- Serviço que adiciona camadas de cache sobre BDs para ajudar a melhorar os tempos de leitura de solicitações comuns, compatível com o Redis e Memcached.

Amazon DynamoDB Accelerator (DAX)
- Serviço de cache em memória do DynamoBD, melhorando o tempo de resposta de mili para microssegundos.

## Módulo 6: Segurança

- Explicar os benefícios do modelo de responsabilidade compartilhada usando exemplos do mundo real.
- Descrever a autenticação multifator (MFA).
- Diferenciar os níveis de segurança do AWS Identity and Access Management (IAM).
- Explicar os principais benefícios do AWS Organizations.
- Descrever as políticas de segurança em um nível básico.
- Resumir os benefícios da conformidade com a AWS.
- Explicar serviços de segurança adicionais da AWS em um nível básico.

### Anotações

Modelo de responsabilidade compartilhada
- A AWS é responsavel por garantir a segurança *da* nuvem.
    - Software: computação, armazenamento, banco de dados, rede
    - Hardware: Regiões, Zonas de Disponibilidade, Locais de Borda

- O Cliente é responsável por garantir a segurança de tudo o que criam e colocam *na* nuvem.
    Requisitos de Segurança
    - Dados do usuário.
    - Plataforma, aplicações, Identity and Access Management (IAM)
    - Configuração de SOs, Redes e Firewall
    - Criptografia de dados no lado do cliente
    - Criptografia de dados no lado do servidor
    - Proteção de tráfego de rede
    - Entre outros...

Permissões de usuário e acesso
- AWS Identity and Access Management (IAM)
    - Único recurso da AWS disponível em todas as regiões.
    - Com ele você realiza o gerenciamento das permissões da organização.
    - Você, a partir da conta raiz, cria e gerencia todos os outros usuários que irão utilizar o sistema.
    - Uma prática muito recomendada é não criar um usuário raiz para tarefas cotidianas. Crie o primeiro usuário e atribua a ele permissões para criar outros usuários.
    - [Tarefas que exigem credenciais de usuário-raiz](https://docs.aws.amazon.com/IAM/latest/UserGuide/root-user-tasks.html)
    - Por padrão, um novo usuário IAM não possui permissões associadas a ele. 
    - Outra prática recomendada é seguir o **princípio de segurança do menor privilégio** ao conceder permissões: quais são as necessidades de acesso daquele usuário? 
    - Ao invés de atribuir as permissões a somente um usuário a uma funcionalidade padrão daquela organização, também é possível atribuir esse usuário a um *grupo IAM*.
    - A terceira e última possibilidade é a do perfil IAM. Este é considerado em casos onde o colaborador realiza diferentes funcionalidades nas diversas estações de trabalho, realizando acessos temporários do seu perfil diante daquela função na qual foi designado.
- AWS Organizations
    - [Service Control Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html)
- Conformidade
    - [AWS Artifact](https://aws.amazon.com/pt/artifact/)
        - [Programas de Conformidade da AWS](https://aws.amazon.com/pt/compliance/programs/)
        - [Centro de Conformidade para clientes](https://aws.amazon.com/pt/compliance/customer-center/)
- Ataques de negação de serviço (**DoS**)
    - É uma tentativa deliberada de tornar um site ou aplicação indisponível para os usuários.
    - O invasor inunda a aplicação com tráfego excessivo de rede até subrecarregar a aplicação e esta não consiga mais responder. Isto impede que outros usuários legítimos realizem solicitações àquela aplicação.
    - O mesmo pode ocorrer de forma distribuída (**DDoS**).
    - [AWS Shield](https://aws.amazon.com/pt/shield/) ajuda a minimizar o efeito de ataques DoS e DDoS em suas aplicações.
        - O Standard protege automaticamente todos os clientes AWS sem custo de ataques DDoS mais comuns e frequentes. Utiliza técnicas de análise para detectar tráfego mal-intencionado em tempo real e mitigá-lo automaticamente.
        - O Advanced faz o mesmo, entretante fornece relatórios detalhados de ataques elaborados de DDoS.
- Amazon Key Management Service (KMS)
    - Utilizado para criar, gerencias e utilizar as chaves de criptografia dos dados em repouso e/ou em transmissão.
- Amazon Web Application Firewall (WAF)
    - Monitora solicitações de rede que entram em aplicações web na nuvem da AWS através das **listas de controle de acesso** ([ACL](#módulo-4-redes)) da rede (stateless-padrão I/O aberto).
    - Trabalha em conjunto com o AWS CloudFront e o ELB.
    - Exemplo: Digamos que o AWS WAF seja configurado para permitir o acesso a todos os endereços de IP não bloqueados. Assim que a aplicação receber uma solicitação, ele vai avaliar essa condicional.
- Amazon Inspector
    - Inspeciona a aplicação e retorna uma lista pelo nível de gravidade acompanhado de uma descrição detalhada de cada problema de segurança e a recomendação de como corrigi-lo.
- Amazon GuardDuty
    - Monitoramento inteligente de toda nuvem do cliente AWS.
    - Analisa de modo contínuo os recursos da aplicação.

## Módulo 7: Monitoramento e Análise

- Resumir abordagens para monitorar seu ambiente AWS.
- Descrever os benefícios do Amazon CloudWatch.
- Descrever os benefícios do AWS CloudTrail.
- Descrever os benefícios do AWS Trusted Advisor.

### Anotações

[Amazon CloudWatch](https://aws.amazon.com/pt/cloudwatch/pricing/?loc=ft#Free_tier)
- Serviço de monitoramento e gestão de métricas que permite configurar ações de alarmes caso determinada métrica atinja seu limite.
- Por exemplo, você pode criar um *alarme*(SNS) que interrompe automaticamente uma instância cuja porcentagem de utilização permaneça abaixo de um determinado limite por um período específico.
- Redução do Tempo Médio de Reparo (MTTR)
- Melhoria do Custo Total de Propriedade (TCO)

[Amazon CloudTrail](https://aws.amazon.com/pt/cloudtrail/pricing/?loc=ft#Free_Tier)
- Realiza o registro de todas as chamadas de API realizadas na sua conta. As informações gravadas são:
    - ID do chamador
    - Hora da chamada
    - Endereço de IP do chamador
    - Etc...
- Utilizado para processos de Auditoria e análise operacional, por exemplo.
- Responde as perguntas de quem fez o quê, onde e quando, não responde o porquê.

[Amazon Trusted Advisor](https://aws.amazon.com/pt/premiumsupport/technology/trusted-advisor/)
- Inspeciona sua nuvem AWS e apresenta sugestões de melhorias em tempo real de acordo com as práticas recomendadas da AWS.
- As 5 categorias são:
    - Otimização de custos
    - Desempenho
    - Segurança
    - Tolerância a falhas
    - Limite de serviço
- É um consultor como serviço automatizado.

## Módulo 8: Definição de preços e suporte

- Descrever os modelos de definição de preço e suporte AWS.
- Descrever o nível gratuito da AWS.
- Descrever os principais benefícios do AWS Organizations e da cobrança consolidada.
- Explicar os benefícios do AWS Budgets.
- Explicar os benefícios do AWS Cost Explorer.
- Explicar os principais benefícios da Calculadora de Preços AWS.
- Distinguir entre os vários planos do AWS Support.
- Descrever os benefícios do AWS Marketplace.

### Anotações

[Nível Gratuito da AWS](https://aws.amazon.com/free)
- Existem 3 tipos de oferta na AWS ao considerar os custos e dependendo do tipo de recurso:
    - Sempre gratuito
    - 12 meses gratuito
    - Versões de teste
- O AWS Lambda permite um milhão de solicitações gratuitas e até 3,2 milhões de segundos de tempo de computação por mês.
- O Amazon DynamoDB libera 25GB de armazenamento gratuito por mês.
- O Amazon S3 é gratuito por 12 meses para até 5GB de armazenamento básico.

Conceitos de [definição de preço da AWS](https://aws.amazon.com/pricing)
1. Pague somente pelo o que usar.
2. Pague menos ao fazer reserva.
    - Quanto mais previsível for a carga de trabalho, melhor será para adaptar os custos aos planos da AWS e maior será a economia.  
3. Pague menos com descontos baseados em volume, quando usar mais.
    - Quanto mais espaço de armazenamento você usar no S3, menos pagará por GB.

[Calculadora de custos da AWS](https://calculator.aws/#/)
[Definições de preços do EC2](https://aws.amazon.com/ec2/pricing/)
[Definições de preços do S3](https://aws.amazon.com/s3/pricing/)
[Definições de preços do AWS Lambda](https://aws.amazon.com/lambda/pricing/)
[Introduction to AWS Economics](https://d1.awsstatic.com/whitepapers/introduction-to-aws-cloud-economics-final.pdf)
[How AWS Pricing Works](https://docs.aws.amazon.com/whitepapers/latest/how-aws-pricing-works/abstract-and-introduction.html)
[Gerenciamento financeiro na nuvem com a AWS](https://aws.amazon.com/pt/aws-cost-management/)

Painel de cobrança
- [AWS Billing](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html)

[Cobrança consolidada](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html)
- Centraliza a fatura de todas as contas por meio do [AWS Organizations](https://aws.amazon.com/pt/organizations/)

[AWS Budgets](https://aws.amazon.com/aws-cost-management/aws-budgets)
- Criação de orçamentos para planejar o uso dos serviços, os custos de serviços e as reservas de instâncias.

[AWS Cost Explorer]()
- Permite visualizar, interpretar e gerenciar seus custos e uso da AWS ao longo do tempo.

Planos do [AWS Support](https://aws.amazon.com/premiumsupport)

- Basic: gratuito com acesso a whitepapers, documentação, comunidade de suporte, verificações limitadas do AWS Trusted Advisor, AWS Personal Health Dashboard.
- Desenvolvedor: este e os próximos planos permitem abrir um número ilimitado e suportes técnicos. Este plano, dentre os outros, possui o menor custo. Com ele você pode solicitar ao suporte da arquitetura de componentes para identificação de oportunidades ao combinar serviços e recursos específicos para sua empresa, por exemplo.
- Empresarial: além dos benefícios dos planos anteriores, neste plano você tem acesso a todas as verificações do AWS Trusted Advisor, orientação de caso de uso para identificação de oportunidades e suporte limitado para assistência técnica de instalação de softwares de terceiros em instâncias EC2.
- Empresarial Rápido: os recursos adicionais são:
    - Um grupo de **Technical Account Managers** para orientar proativamente e coordenar o acesso a programas e especialistas da AWS
        - Revisão consultiva e orientação de arquitetura (uma por ano)
        - Suporte de gerenciamento de eventos de infraestrutura (uma por ano)
        - Fluxos de trabalho de automação de suporte
        - 30 minutos ou menos tempo de resposta para problemas críticos de negócios
    - A Oficina de otimização de custos (uma por ano)
    - Uma equipe de suporte do Concierge para cobrança e assistência à conta
    - Ferramentas para monitorar custos e desempenho por meio do Trusted Advisor e do painel/API Health

- Empresarial de Grande Porte
    - Um Technical Account Manager designado para realizar orientação proativa e coordenar o acesso a programas e especialistas da AWS
        - Revisão consultiva e orientação de arquitetura
        - Suporte de gerenciamento de eventos de infraestrutura
        - Oficina e ferramentas de otimização de custos
        - Suporte a fluxos de trabalho de automação
        - 15 minutos ou menos tempo de resposta para problemas críticos de negócios
    - Uma equipe de suporte Concierge para cobrança e assistência à conta
    - Análises de operações e ferramentas para monitorar o health
    - Dias de treinamento e jogos para impulsionar a inovação
    - Ferramentas para monitorar custos e desempenho por meio do Trusted Advisor e do painel/API Health

Technical Account Manager (TAM)
- Incluso nos planos empresariais rápido e de grande porte.
- Principal ponto de contato com a AWS.
- "..., o TAM educa, capacita e desenvolve sua jornada para a nuvem em toda a gama de serviços da AWS."

AWS Marketplace
- Catálogo digital da AWS com milhares de ofertas de software de provedores independentes.
- Você "... pode explorar soluções de software por setor e caso de uso."
- Categorias:
    - Software de infraestrutura
    - DevOps
    - Produtos de dados
    - Serviços profissionais
    - Aplicações empresariais
    - Machine Learning
    - Setores
    - Internet das Coisas IoT

## Módulo 9: Migração e Inovação na Nuvem

- Compreender a migração e a inovação na nuvem AWS.
- Resumir o AWS Cloud Adoption Framework (AWS CAF). 
- Resumir os seis principais fatores de uma estratégia de migração para a nuvem.
- Descrever os benefícios das soluções de migração de dados da AWS, como o AWS Snowcone, o AWS Snowball e o AWS Snowmobile.
- Resumir o amplo escopo de soluções inovadoras que a AWS oferece

### Anotações

[AWS Cloud Adoption Framework (AWS CAF)](https://d1.awsstatic.com/whitepapers/pt_BR/aws-cloud-adoption-framework_pt-BR.pdf)
- As 6 perspectivas para orientar a mudança à nuvem.
    
    *Capacidades Corporativas*
    - Negócio: alinhamento às necessidades e investimento vinculado aos principais resultados do negócio.
        Perfis comuns:
            - Gerentes de negócios
            - Gerentes financeiros
            - Proprietários de orçamento
            - Stakeholders de estratégia
    - Pessoas: desenvolvimento de uma estratégia de gerenciamento de alterações em toda a organização para a adoção bem-sucedida da nuvem.
        Perfis comuns:
            - Recursos humanos
            - Equipe
            - Gerentes de pessoas
    - **Governança**: habilidades e processos para alinhar a estratégia de TI à estratégia de negócios.
        Perfis comuns:
            - Chief Information Officer (CIO)
            - Gerentes do programa
            - Enterprise architect
            - Analista de negócios
            - Gerentes de portfólio
    
    *Capacidades técnicas*
    - **Plataforma**: princípios e padrões para implementação de novas soluções na nuvem e migração de cargas de trabalho on-premises para nuvem.
        Perfis comuns:
            - Chief Information Officer (CIO)
            - Gerentes de TI
            - Arquitetos de soluções
    - Segurança: garante que a organização atenda aos objetivos de segurança de visibilidade, auditoria, controle e agilidade.
        Perfis comuns:
            - Chief Information Security Officer (CISO)
            - Gerentes de segurança de TI
            - Analistas de segurança de TI
    - Operações: ajuda a ativar, executar, usar, operar e recuperar cargas de trabalho de TI para o nível definido com os stakeholders da empresa.
        Perfis comuns:
            - Gerentes de operações de TI
            - Gerentes de suporte de TI  

[As 6 Estratégias da migração](https://aws.amazon.com/pt/blogs/enterprise-strategy/6-strategies-for-migrating-applications-to-the-cloud/)

Os 6 R's de Migração
- **Redefinição de hospedagem** (lift-and-shift): movimentação de aplicações sem alterações.
- **Redefinição de plataforma** (lift, tinker and shift): otimizações na nuvem para obter um benefício tangível sem alterar a arquitetura central do aplicativo.
- Refatoração (**Rearquitetura**): reimaginar como uma aplicação é arquitetada e desenvolvida usando recursos nativos da nuvem. Geralmente é impulsionada à forte necessidade que a empresa tem de adicionar recursos, scalling ou desempenho que o ambiente em nuvem possui.
- **Recompra**: mudança de uma licença tradicional para um modelo de software como serviço.
- **Retenção**: manter as aplicações essenciais para a empresa no ambiente de origem. 
- **Retirada**: processo de remoção de aplicações que não são mais necessários.

[AWS Snow Family](https://aws.amazon.com/pt/snow/)
A família é composta de:
- Snowcone
- Snowball
- Snowmobile
Essa grande família integra recursos de *segurança*, *monitoramento*, *gerenciamento de armazenamento* e *computação* da AWS a partir de dispositivos físicos de variados tipos de escalas.
- Snowcone: dispositivo pequeno
    **Capacidade técnica**: 2CPUs, 4GB de memória e até 14 TB de armazenamento.

- Snowball: consiste em 2 dispositivos (Storage e Compute)
    *Storage*
    **Capacidade técnica**: 40 vCPUs, 80GiB de memória e até 80 TB de armazenamento HDD para volumes de blocos e armazenamento de objeto, além de 1 TB do SSD SATA para volumes de blocos.
    *Compute*
    **Capacidade técnica**: 104 vCPUs, 416 GiB de memória, GPU NVIDIA Tesla V100 opcional e até 80 TB de armazenamento HDD para volumes de blocos e armazenamento de objeto, além de 28 TB do SSD NVMe para volumes de blocos compatíveis com o Amazon EBS.

- Snowmobile: consiste em um contâiner de transporte reforçado com 13,71 metros de comprimento para transferência de até 100 petabytes de dados.

[Artigo: GB e GiB](https://diolinux.com.br/tutoriais/gb-ou-gib-medidas-de-arquivos.html)

Inovação com a AWS
- Pontos de atenção para articular a inovação:
    - Qual é o estado atual?
    - Qual é o estado desejado?
    - Quais são os problemas que você está tentando resolver?
- Meios de inovação pela AWS Cloud:
    - Aplicações sem servidores: você não precisa administrar ou provisionar servidores de aplicações. Ex.: AWS Lambda
    - Machine Learning: criação, treinamento e implementação de modelos de ML pelo AWS SageMaker.
    - Inteligência Artificial: [Amazon Lex](https://aws.amazon.com/pt/pm/lex) para criação de chatbots e [Amazon Textract](https://aws.amazon.com/pt/textract/) para extrair informações de textos, por exemplo.

[AWS CodeWhisperer]()
- Gerador de código com IA para IDEs e editores de código.

## Módulo 10: a jornada para nuvem

- Resumir os seis pilares do Well-Architected Framework.  
- Explicar os seis benefícios da computação em nuvem.

Os 6 pilares do Well Architected Framework
- Excelência operacional
- Segurança
- Confiabilidade
- Eficiência de performance
- Otimização de custos
- Sustentabilidade

Com eles você tem um framework que te auxilia a projetar e operar sistemas confiáveis, seguros, eficientes e econômicos na nuvem AWS.

### Excelência operacional

Capacidade de executar e monitorar sistemas para entregar valor comercial e melhorar continuamente os processos e procedimentos de apoio.
    **Princípios de Design**
    - Executar operações como código
    - Anotar documentação
    - Antecipar falhas
    - Fazer alterações pequenas e reversíveis com frequência

### Segurança

Capacidade de proteger informações, sistemas e ativos do negócio, e, ao mesmo tempo, entregar valor comercial por meio de avaliações de risco e estratégias de mitigação.
    **Práticas recomendadas**
    - Automatize as práticas recomendadas de segurança quando possível
    - Aplique segurança em todas as camadas
    - Proteja os dados em trânsito e em repouso

### Confiabilidade  

Capacidade de um sistema (i) recuperar-se de interrupções na infraestrutura ou no serviço, (ii) adquirir dinamicamente recursos de computação para atender à demanda e (iii) reduzir as interrupções durante as operações, como configurações incorretas ou problemas de rede transitórios.

### Eficiência de performance

Capacidade de um sistema usar recursos computacionais com eficiência para cumprir requisitos do sistema e manter essa eficiência à medida que a demanda muda e as tecnologias evoluem. 
    **Avaliações da eficiência da arquitetura**
    - Experimentação com frequência
    - Uso de arquiteturas serveless
    - Projeção direcionado ao alcance global em minutos

### Otimização de custos

Capacidade de executar sistemas para entregar valor comercial com o menor preço. Isto inclui a adoção de um *modelo de consumo*, *análise e atribuição de despesas* e *uso de serviços gerenciados* para reduzir o custo de propriedade (TCO).

### Sustentabilidade

Capacidade do sistema melhorar continuamente os impactos da sustentabilidade, reduzindo o consumo de energia e aumentando a eficiência em todos os componentes de uma carga de trabalho, maximizando os benefícios dos recursos provisionados e minimizando o total de recursos necessários.
    **O Bom Design para Sustentabilidade**
    - Entenda o seu impacto
    - Estabeleça metas de sustentabilidade
    - Maximize a utilização
    - Antecipe e adote novas ofertas de hardware e software mais eficientes
    - Use serviços gerenciados
    - Reduza o impacto downstream de suas cargas de trabalho na nuvem

[Os 6 benefícios do Cloud Computing](https://docs.aws.amazon.com/whitepapers/latest/aws-overview/six-advantages-of-cloud-computing.html)

- Trocar despesa antecipada por despesas variáveis.
- Benefícios com as grandes economias de escala.
- Parar de tentar adivinhar a capacidade.
- Aumentar a velocidade e a agilidade.
- Parar de gastar dinheiro com execução e manutenção de data centers.
- Ter alcance global em minutos.

## Módulo 11: estratégias para o exame

- [Guia do exame](https://d1.awsstatic.com/training-and-certification/docs-cloud-practitioner/AWS-Certified-Cloud-Practitioner_Exam-Guide.pdf)
- [Domínios](https://aws.amazon.com/certification/certified-cloud-practitioner/)
- [Overview of Amazon Web Services](https://d1.awsstatic.com/whitepapers/aws-overview.pdf)
- [How AWS Pricing Works](https://docs.aws.amazon.com/whitepapers/latest/how-aws-pricing-works/abstract-and-introduction.html)
- [Compare AWS Support Plans](https://aws.amazon.com/premiumsupport/plans/)
- [Perguntas do exame de amostra CLF-01](https://d1.awsstatic.com/training-and-certification/docs-cloud-practitioner/AWS-Certified-Cloud-Practitioner_Sample-Questions.pdf)

### Domínios do exame

- Conceitos de nuvem (26%)
- Segurança e conformidade (25%)
- Tecnologia (33%)
- Cobrança e preços (16%)

## Certificado

![cert](AWS%20Course%20Completion%20Certificate.pdf)