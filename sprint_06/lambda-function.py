import json
import pandas
import boto3

def lambda_handler(event, context):
    s3_client = boto3.client('s3')
 
    bucket_name = 'tuckbe'
    s3_file_name = 'data/nomes.csv'
    objeto = s3_client.get_object(Bucket=bucket_name, Key=s3_file_name)
    
    df=pandas.read_csv(objeto['Body'], sep=',')
    rows = len(df.axes[0])

    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }

""" Camadas na AWS

Ao implementar essa função na nuvem ocorrerá um erro pois, a princípio, nenhuma camada foi configurada. Mas o que é uma camada?

Uma camada é uma forma de empacotar as bibliotecas e dependências do seu código Lambda, reduzindo o tamanho dos arquivos de implantação e acelerando os mesmos. 
Essa camada é representada por um arquivo .zip que pode conter bibliotecas, tempo de execução personalizado, dados ou arquivos de configuração.

"""