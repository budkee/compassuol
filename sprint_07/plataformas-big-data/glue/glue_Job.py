import sys
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

# Código do Job
source_file = args['S3_INPUT_PATH']
target_path = args['S3_TARGET_PATH']

# Criação do dataframe
df = glueContext.create_dynamic_frame.from_options(
    
    "s3",
    {
        "paths": [source_file]
    },
    "csv",
    {
        "withHeader": True, "separator": "|"
    }
    
    )

# Filtro de interesse
only_1934 = df.filter(lambda row: row['anoLancamento'] == '1934')

# Output
glueContext.write_dynamic_frame.from_options(
    
    frame = only_1934,
    connection_type = "s3",
    connection_options = { "path":target_path },
    format = "parquet"

    )

# Fim do Job
job.commit()