import json
import requests
import pandas as pd
import boto3

if __name__ == "__main__":

# Autorização API
    api_key = "fd1338c96e30497e6527e87678734881"

    headers = {
        "accept": "application/json",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZDEzMzhjOTZlMzA0OTdlNjUyN2U4NzY3ODczNDg4MSIsInN1YiI6IjY1M2QxZWM5MTA5Y2QwMDEyY2ZmMDQ1MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.6dK9LhzJYT2pWZIbr8Rrqf_vnQp7ewH3f3fY7MSYgIQ"
    }
    ## Parâmetros de interesse 
    parametros = "include_adult=false&include_video=false&language=pt-BR"

    ## Lista de Filmes
    filmes = []
    endpoint = "3/discover/movie"

# Declarações de Entradas e Saídas
    url = f"https://api.themoviedb.org/{endpoint}?api_key={api_key}&{parametros}"
    output_path = "/home/glue_user/workspace/arq_saida"

# Requisição e coleta
    response = requests.get(url)

# Verifica o status
    if response.status_code == 200:
        
        ## Entrega os dados para um obj
        dados_api = response.json()
        ## Transfere para o DataFrame
        df = pd.DataFrame(dados_api)
        ## Recolhe somente os filmes
        filmes = df['results']

    # Agrupamento dos filmes de ação e aventura
        filmes_aa = []
        id_acao = 28
        id_aventura = 12
        
        ## Armazena os dados em uma lista
        for filme in filmes:
        
            
            genre_ids = filme.get("genre_ids", [])
            ## Verifica se é de ação ou aventura
            if id_acao in genre_ids or id_aventura in genre_ids:
                filmes_aa.append(filme)
        
        print(f"Foram encontrados {len(filmes_aa)} filmes de ação/aventura!")
        
    # Exportando pro arquivo json
        dados_api = "dados_api.json"

        with open(dados_api, 'w') as arquivo_json:
            json.dump(filmes_aa, arquivo_json, indent=4)
            

        print(f'Dados exportados para {dados_api}')
        #display(filmes_aa)
        
    else:
        print(f'Erro na solicitação: {response.status_code}')

