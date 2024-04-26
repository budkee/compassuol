import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from pyspark.sql.functions import upper
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


source_file = args['S3_INPUT_PATH']
target_path = args['S3_TARGET_PATH']

# Criação do dataframe
## Dynamic
nomes_dy = glueContext.create_dynamic_frame.from_options(
    
    "s3",
    {
        "paths": [source_file]
    },
    "csv",
    {
        "withHeader": True, "separator": ","
    }
    
    )

# Transformações
## 1. Passando o DY para DF Spark
nomes_df = nomes_dy.toDF()

# 2. Impressão do schema do DataFrame gerado
## Dynamic
# nomes_dy.printSchema()
## Spark
nomes_df.printSchema()


# 3. Colocar os valores da coluna 'nome' em Maiúsculo
## Dynamic
# maiuscula = lambda nome: nome.upper() if nome is not None else None
# nome_maiusc_col = Map.apply(frame=nomes, f = maiuscula)
## Spark
nome_maiusc_col = nomes_df.withColumn("nome", upper(nomes_df["nome"]))

# Outputs
## Dynamic
#glueContext.write_dynamic_frame.from_options(
#    
#    frame = nome_maiusc_col,
#    connection_type = "s3",
#    connection_options = {"path": target_path, "partitionKeys": ["sexo", "ano"]},
#    format = "json"
#    )
## Spark
nome_maiusc_col.write.partitionBy("sexo", "ano").mode('overwrite').json(target_path)

# Fim do Job
job.commit()
