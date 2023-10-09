![spark]()
![hadoop]()

## Sumário | Plataformas Big Data

- [Setup | Apache Spark](https://spark.apache.org/docs/latest/api/python/getting_started/install.html)
- [Setup | Hadoop]()

## Tarefas e Desafios

### Tarefa 01 | Python e Pandas
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

### Tarefa 02 | Apache Spark

