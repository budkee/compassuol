import os # Sistema operacional 
import sys # Funções e variáveis da shell do Python
import getopt # Criação de opções de entrada pela CLI

# Spark
import pyspark  
from pyspark import SparkContext 
from pyspark.sql import SparkSession 
from pyspark.sql.functions import * 


# Job

if __name__ == "__main__":
    
    input_path = "/Users/camilabudke/Desenvolvimento/jupyter/dados_brutos/nomes.csv"
    output_path = "/Users/camilabudke/Desenvolvimento/jupyter/dados_processados/nomes"
    
    # SparkSession
    spark = SparkSession.builder.appName("\n Teste \n").getOrCreate()
    esquema = "nome STRING, sexo STRING, total INT, ano INT"
    
    nomes = spark.read.csv(input_path, header=True, schema=esquema)
    #nomes = spark.read.csv(sys.argv[1:], header=True, schema=esquema)
    
    
    # Transformação: Contagem das linhas do DataFrame
    linhas = nomes.count()
    
    # 1. Colocar os valores da coluna 'nome' em Maiúsculo
    from pyspark.sql.functions import upper
    nome_maiusc_col = nomes.withColumn("nome", upper(nomes["nome"]))
    
    # Output
    print("\n")
    print("\n Número de linhas: ", linhas)
    print("\n")
    
    #nome_maiusc_col.write.format("console").save()
    
    # Salvar a transformação particionada por sexo e ano
    nome_maiusc_col.write.partitionBy("sexo", "ano").json(output_path)
    #nome_maiusc_col.write.format("json").save(output_path)

    # Fim da aplicação
    spark.stop()
    