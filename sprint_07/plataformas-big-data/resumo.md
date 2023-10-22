![Apache Spark](https://img.shields.io/badge/Apache%20Spark-FDEE21?style=flat-square&logo=apachespark&logoColor=black)
![Apache Hadoop](https://img.shields.io/badge/Apache%20Hadoop-66CCFF?style=for-the-badge&logo=apachehadoop&logoColor=black)

## Sumário | Plataformas Big Data

- [Download | Apache Spark Hadoop](https://spark.apache.org/downloads.html)


## Tarefas e Atividades

    wget www.datascientist

## Tarefa 01 | Python e Pandas | Filmes
1. Identifique o ator/atriz com maior número de filmes e o respectivo número de filmes.

        # Resposta: 'Robert DeNiro: 79 filmes'

        ## Maior número de filmes
        maior_num_filmes = df['Number of Movies'].max()
        #print(maior_num_filmes)

        ## Nome do ator/atriz correspondente
        indice_nome = df[df['Number of Movies'] == maior_num_filmes]
        nome = df.iloc[19]['Actor']

        ## Resultado 01
        tarefa_01 = [nome, maior_num_filmes]

        # Saída
        print('{}: {} filmes'.format(*tarefa_01))

2. Apresente a média da coluna contendo o número de filmes.

        ## Média da coluna
        media = df['Number of Movies'].mean()
        ## Resultado 02
        etapa_02 = round(media, 2)

        # Saída
        print('Média do numero de filmes: {}'.format(etapa_02))

3. Apresente o nome do ator/atriz com a maior média por filme.

        # Resposta esperada: Anthony Daniels com uma média de $451.8 por filme.

        # Transformação
        ## Média da coluna
        maior_media_filme = df['Average per Movie'].max()

        ## Nome do ator/atriz correspondente
        indice = df[df['Average per Movie'] == maior_media_filme]
        nome = df.iloc[14]['Actor']

        ## Resultado 03
        etapa_03 = [nome, maior_media_filme]

        # Saída
        print('{} com uma média de ${} por filme'.format(*etapa_03))

4. Apresente o nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.

        ## Frequência dos filmes
        frequencia = df['#1 Movie'].value_counts()
        frequencia

## Tarefa 02 | Apache Spark | Contador de palavras

- Objetivo: desenvolver um job de processamento com o framework Spark por meio de um container Docker.
- Tecnologias: Docker, Spark, Python, UTM, Ubuntu


### Ato 1

- Nesta atividade faremos uso da imagem jupyter/all-spark-notebook (https://registry.hub.docker.com/r/jupyter/all-spark-notebook) para criar um container e utilizar o recurso de shell oferecido pelo Spark. Os passos a executar são:


1. [x] Realizar o pull da imagem jupyter/all-spark-notebook 

>       docker pull jupyter/all-spark-notebook

2. [x] Criar um container a partir da imagem

- A imagem, além do Spark, contém o Jupyter Lab. Caso queira utilizar o Jupyter para testar seu código em um notebook, você deverá iniciar o container no modo interativo (-it). Lembre-se também de realizar o mapeamento da porta de serviço exposta pelo container (8888) para uma porta local de sua máquina.

>       docker run -d -p 8888:8888 jupyter/all-spark-notebook

- A inicialização do container gera em tela várias linhas de log. Atente-se ao trecho que contém um conteúdo semelhante ao indicado a seguir. O que você deverá copiar é o link com o prefixo http://127.0.0.1:8888/lab?token=, o qual informado na barra de endereços do navegor dará acesso ao Jupyter Lab.

>       docker start -i spark_jupyter

Exemplo do trecho de log com a URL de acesso ao Jupyter:

>    To access the server, open this file in a browser:
>
>        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
>
>    Or copy and paste one of these URLs:
>
>        http://971982358c87:8888/lab?token=a39f87863cfab9c17441250786a9c7544bef8c2d929e6cfc
>
>        http://127.0.0.1:8888/lab?token=a39f87863cfab9c17441250786a9c7544bef8c2d929e6cfc


3. Em outro terminal, execute o comando `pyspark` no seu container. Pesquise sobre o comando docker exec para realizar esta ação. Utilize as flags -i e -t no comando.

>       docker exec -it spark_jupyter sh

- A execução do passo 3 irá deixar disponível o terminal interativo do Spark. Trata-se de uma interface que permite rodar instruções do Spark linha a linha, como ocorre com o terminal do Python, por exemplo. 

> É neste terminal que você deve testar os comandos necessários para realizar a atividade a seguir.


4. Usando o Spark Shell, apresente a sequência de comandos Spark necessários para contar a quantidade de ocorrências de cada palavra contida no arquivo README.md de seu repositório git.

> 



