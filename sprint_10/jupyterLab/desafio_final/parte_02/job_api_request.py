import requests
from IPython.display import display

url = "https://api.themoviedb.org/3/find/28?external_source=imdb_id&language=pt-BR"
#url = "https://api.themoviedb.org/3/search/tv?query=rick%20and%20morty&include_adult=true&language=en-US&page=1"

headers = {
    "accept": "application/json",
    "Authorization": "$AUTH_BEARER"
}

response = requests.get(url, headers=headers)

print(response.text)