#!/usr/bin/python
# -*- coding: utf-8 -*-
#
#
# Acessando o s3
## Sobre
# Este script realiza a leitura de um arquivo no AWS S3.

import boto3

# Substitua 'ACCESS_KEY' e 'SECRET_KEY' pelas suas próprias credenciais AWS
# s3 = boto3.client('s3', aws_access_key_id='ACCESS_KEY', aws_secret_access_key='SECRET_KEY')
s3 = boto3.client('s3', aws_access_key_id='$YOUR_ACCESS_KEY', aws_secret_access_key='$YOUR_SECRET')

# Nome do bucket e nome do arquivo que você deseja ler
bucket_name = 'tuckbe'
file_name = 'nomes.csv'

try:
    # Lê o arquivo do Amazon S3
    response = s3.get_object(Bucket=bucket_name, Key=file_name)

    # O conteúdo do arquivo está em response['Body'].read()
    file_content = response['Body'].read()

    # Imprime o conteúdo do arquivo
    print(file_content.decode('utf-8'))  # Decodifica para string UTF-8

except Exception as e:
    print("Erro ao ler o arquivo: ".format(str(e)))
