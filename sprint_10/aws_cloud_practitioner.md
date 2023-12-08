# AWS Cloud Practitioner

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

