import sys
import boto3
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

## @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME', 'S3_INPUT_PATH', 'S3_TARGET_PATH'])

# Criação dos objetos
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)

# Início do Job
job.init(args['JOB_NAME'], args)

# 1. Leitura do arquivo no s3
source_file = args['S3_INPUT_PATH']
target_path = args['S3_TARGET_PATH']

# Criação do Dynamic Frame
df = glueContext.create_dynamic_frame.from_options(
    
    "s3",
    {
        "paths": [source_file]
    },
    "csv",
    {
        "withHeader": True, "separator": ","
    }
    
    )

#df_spark = df.toDF()

# Filtros de interesse | Log
# 2. Schema do DataFrame gerado

printSchema(df)

# 3. Contagem das linhas do DataFrame
print("\n")
print("\n Número de linhas: ", df.count())
print("\n")

# Filtros de interesse | JSON
# 4. Colocar os valores da coluna 'nome' em Maiúsculo
from pyspark.sql.functions import upper

# Criação do DataFrame de interesse
nome_maiusc_col = df.withColumn("nome", upper(nomes["nome"]))

# 5. Contagem de nomes agrupado por ano e sexo, e ordenado por ano de modo decrescente
from pyspark.sql.functions import count

# Criação do DataFrame de interesse
contagem_nomes = df.groupBy("ano", "sexo").agg(count("nome").alias("contagem"))
contagem_nomes_ano = contagem_nomes.orderBy("ano", ascending=False)

# 6. Nome feminino mais registrado e o respectivo ano de registro
from pyspark.sql.functions import *
from pyspark.sql.window import Window

# Criação do DataFrame de interesse
janela_analise = Window.partitionBy("ano").orderBy(desc("total"))

# Criação do DataFrame de interesse
nomes_fem = df.filter(col('sexo') == "F")
nfs_mais_registrados = nomes_fem.withColumn("rank", dense_rank().over(janela_analise))
nf_mais_registrado_ano = nfs_mais_registrados.filter(nfs_mais_registrados.rank==1)
nf_mais_registrado_final = nf_mais_registrado_ano.select("nome", "ano", "total").orderBy("total", ascending=False)

# 7. Nome masculino mais registrado e o respectivo ano de registro

# Criação do DataFrame de interesse
nomes_masc = df.filter(nomes.sexo == "M")
nms_mais_registrados = nomes_masc.withColumn("rank", dense_rank().over(janela_analise))
nm_mais_registrado_ano = nms_mais_registrados.filter(nms_mais_registrados.rank==1)
nm_mais_registrado_final = nm_mais_registrado_ano.select("nome", "ano", "total").orderBy("total", ascending=False)

# 8. Total de registros para cada ano (Apresentar as 10 primeiras linhas ordenada por Ano de modo crescente)

# Criação do DataFrame de interesse
registros_ano = nomes.groupBy("ano").agg(sum("total").alias("total de registros por ano"))
registros_ordenados = registros_ano.orderBy("ano").limit(10)

## Dynamic to Spark


# Outputs

glueContext.write_dynamic_frame.from_options(
    
    frame = nome_maiusc_col,
    connection_type = "s3",
    connection_options = { "path":target_path },
    format = "json",
    

    )

# Fim do Job
job.commit()