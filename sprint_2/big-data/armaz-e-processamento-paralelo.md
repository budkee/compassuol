## Armazenamento e Processamento Paralelo
> 
> ### O que é um Cluster de Computadores?
>
> > **Conceito Físico**
>
> É um conjunto de servidores que funcionam com um único propósito e de maneira síncrona.
> 
> O Cluster pode ser escalado por meios verticais, que incluem o aumento do hardware de cada servidor, ou por meios horizontais, que ocorre quando se adiciona 1 ou mais servidores ao Cluster.
>
> ### O que é Armazenamento Paralelo?
> 
> > **Conceito Abstrato**
>
> Consiste em distribuir o armazenamento dos dados através de diversos servidores.
> 
> Isso permite aumentar a capacidade de armazenamento usando um hardware de baixo custo.
>
> ### Software para Armazenamento Paralelo
> 
> > **Como gerenciamos o armazenamento paralelo através de diversos computadores?**
>
> ### Sistema de arquivos distribuido
> 
> Todo sistema operacional possui um sistema de arquivo distribuido para realizar o gerenciamento de arquivos. Os mais comuns são:
> 
> - Windows | [NTFS](https://pt.wikipedia.org/wiki/NTFS)
> - Linux | [EXT3](https://pt.wikipedia.org/wiki/Ext3)
> - MacOS | [APFS](https://support.apple.com/pt-br/guide/disk-utility/dsku19ed921c/mac#:~:text=compat%C3%ADveis%20com%20Windows.-,Apple%20File%20System%20(APFS),-O%20Apple%20File)
>
> Entretanto, esses sistemas citados acima não têm a capacidade de realizar a gestão de arquivos além da máquina local, não sendo possível atuar em Clusters. 
> 
> #### Apache Hadoop | HDFS
> 
> É aqui que entra o famoso [Apache Hadoop HDFS](), software responsável pela gestão do cluster de computadores, definindo como os arquivos serão distribuídos através do cluster.
>
> > **HDFS** significa **Hadoop Distributed File System**
> 
> Com esta ferramenta podemos construir um [Data Lake](data-lake.md) que roda sobre um cluster de computadores e permite o armazenamento de grandes volumes de dados com **_hardware commodity_**, de baixo custo. 
> 
> Não é o único no mercado, mas é o mais utilizado atualmente por ser open-source. 
>
> > Ok, achamos um software para cuidar do gerenciamento dos arquivos de um cluster. 
> > 
> > **Como fazemos para processar os dados se eles estão distribuídos em diversos computadores?**
> 
> #### Apache Hadoop MapReduce e Spark
> 
> Através dos frameworks [Apache Hadoop MapReduce]() e [Apache Hadoop Spark]() é possível processar uma operação, que seja do interesse do negócio, em várias máquinas do cluster (em paralelo). Isso aumenta a velocidade de processamento de grandes volumes de dados.
> 
> ### Arquitetura de Armazenamento e Processamento Paralelo
>
> Para organizar e distribuir os dados corretamente, no menor custo de tempo em maior quantidade de arquivos, é trabalho do engenheiro de dados realizar a gestão computacional durante o período de armazenamento de arquivos. 
> 
> Considere o seguinte esquema:
> 
> ![HDFS-MapReduce Layer](https://intellipaat.com/mediaFiles/2015/07/hadoop6.png)
> 
> 
> Para isto ocorrer dentro dos conformes, o profissional pode utilizar dois serviços: 
> 
> - O **software HDFS** contendo como principais funções o `nameNode`, para gerenciar os computadores, e o `dataNode`, para armazenar de fato o arquivo no disco (acessar o disco e marcar o arquivo);
> 
> - O **software MapReduce** contendo como principais funções o `Job Tracker` para gerenciar o processamento e o `Task Tracker` para de fato processar o dado em questão (realizar as operações matemáticas);
> 
>
> 