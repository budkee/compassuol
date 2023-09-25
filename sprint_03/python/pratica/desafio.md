
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

## Desafio | Extração, Transformação e Carregamento sobre Atores

### Atividade

Armazene o arquivo actors.csv (disponível para download ao final da página) em um diretório local de seu computador. Após, crie 5 novos arquivos com extensão .txt, todos vazios. Você pode nomeá-los de etapa-1.txt, etapa-2.txt,..., etapa-5.txt.

A sequência de perguntas irá orientar o processamento a ser feito sobre o conteúdo do arquivo actors.csv. As respostas obtidas em cada etapa devem ser armazenadas no respectivo arquivo de texto.

Nosso modelo de processamento será semelhante ao diagramação abaixo. Nele há uma entrada (extração), representando o arquivo actors.csv. A camada de transformação será realizada pelo seu script Python, assim como o carregamento, que corresponde aos arquivos etapa-*.txt.

### Processo

![processo-etl](/sprint_03/python/img/processo-ETL.png)

### Importante

- Para desenvolvimento deste exercício, não utilize bibliotecas como Pandas, Polars, NumPy e/ou outras bibliotecas e engines que abstraem o processamento de dados.
- Todas as transformações que julgarem necessárias devem ser feitas por meio dos scripts Python. Nenhuma modificação deve ser feita no arquivo actors.csv.
- Para leitura do arquivo actors.csv, não utilize o módulo csv nativo do Python.


### Sobre o DataSet

Abaixo segue a definição das colunas contidas no arquivo actors.csv

`Ator`: Nome do ator.

`Total Gross`:  Receita bruta de bilheteria doméstica, em milhões de dólares, de todos os filmes do ator.

`Number of movies`: Número de filmes em que o ator participou

`Average per Movie`: Corresponde à bilheteria bruta dividida pelo número de filmes

`#1 Movie`: Filme de maior receita bruta em que o ator participou

`Gross`: Receita bruta de bilheteria doméstica, em milhões de dólares, do filme de maior receita.

### Entregues da atividade

- [Código](./parte-4-ETL/desafio-etl.py)

1. Apresente o ator/atriz com maior número de filmes e a respectiva quantidade. A quantidade de filmes encontra-se na coluna `Number of Movies` do arquivo.

- [Etapa 01 | Resposta](./parte-4-ETL/etapa-1.txt)

2. Apresente a média de receita de bilheteria bruta dos principais filmes `#1 Movie`, considerando todos os atores. Estamos falando aqui da média da coluna `Gross`.

- [Etapa 02 | Resposta](./parte-4-ETL/etapa-2.txt)

3. Apresente o ator/atriz com a maior média de receita de bilheteria bruta por filme do conjunto de dados. Considere a coluna `Avarage per Movie` para fins de cálculo.

- [Etapa 03 | Resposta](./parte-4-ETL/etapa-3.txt)

4. A coluna `#1 Movie` contém o filme de maior bilheteria em que o ator atuou. Realize (i) a contagem de aparições destes filmes no dataset, (ii) listando-os ordenados pela quantidade de vezes em que estão presentes. Considere a ordem decrescente e, em segundo nível, o nome do  filme.

> Ao escrever no arquivo, considere o padrão de saída <sequencia> - O filme <nome filme> aparece <quantidade> vez(es) no dataset, adicionando um resultado a cada linha.

- [Etapa 04 | Resposta](./parte-4-ETL/etapa-4.txt)

5. Apresente a lista dos atores ordenada pela receita bruta de bilheteria de seus filmes (coluna Total Gross), em ordem decrescente.

> Ao escrever no arquivo, considere o padrão de saída <nome do ator> -  <receita total bruta>, adicionando um resultado a cada linha.
   
- [Etapa 05 | Resposta](./parte-4-ETL/etapa-5.txt)
