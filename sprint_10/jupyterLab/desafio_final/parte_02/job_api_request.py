import requests
from IPython.display import display

url = "https://api.themoviedb.org/3/find/28?external_source=imdb_id&language=pt-BR"
#url = "https://api.themoviedb.org/3/search/tv?query=rick%20and%20morty&include_adult=true&language=en-US&page=1"

headers = {
    "accept": "application/json",
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZDEzMzhjOTZlMzA0OTdlNjUyN2U4NzY3ODczNDg4MSIsInN1YiI6IjY1M2QxZWM5MTA5Y2QwMDEyY2ZmMDQ1MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.6dK9LhzJYT2pWZIbr8Rrqf_vnQp7ewH3f3fY7MSYgIQ"
}

response = requests.get(url, headers=headers)

print(response.text)