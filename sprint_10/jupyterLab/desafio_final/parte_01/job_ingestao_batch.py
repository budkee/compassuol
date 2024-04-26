#!/usr/bin/python
# -*- coding: utf-8 -*-

# Imports
import os 
import boto3 
import logging 

# Funções
from datetime import datetime

# Job | Ingestão em Batch
if __name__ == "__main__":
    
    # Declarações
    arquivo_local = "raw/movies.csv"
    bucket = "dados-num-lago"
    
    # Movies
    s3_key_prefix = 'Raw/Local/CSV/Movies'
    current_date = datetime.now()
    
    s3_key_prefix += '/{}/{:02d}/{:02d}'.format(current_date.year, current_date.month, current_date.day)
    s3_object_key = os.path.join(s3_key_prefix, os.path.basename(local_file_path))

    # Inicialize o cliente S3
    s3 = boto3.client('s3', aws_access_key_id=default, aws_secret_access_key=default)

    # Realize o upload do arquivo para o S3
    s3.upload_file(local_file_path, bucket, s3_object_key)

    # Fim da aplicação
    print("O arquivo foi enviado para o S3 em s3://{}/{}".format(bucket, s3_object_key))

