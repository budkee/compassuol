
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

### Entregues da atividade

1. Apresente o ator/atriz com maior número de filmes e a respectiva quantidade.
    - [Etapa 01](./parte-4-ETL/etapa-1.txt)

2. Apresente a média de faturamento bruto por ator.
    - [Etapa 02](./parte-4-ETL/etapa-2.txt)

3. Apresente o ator/atriz com a maior média de faturamento por filme.
    - [Etapa 03](./parte-4-ETL/etapa-3.txt)

4. O nome do(s) filme(s) mais frequente(s) e sua respectiva frequência.
    - [Etapa 04](./parte-4-ETL/etapa-4.txt)

5. A lista dos atores ordenada pelo faturamento bruto total, em ordem decrescente.
    - [Etapa 05](./parte-4-ETL/etapa-5.txt)
