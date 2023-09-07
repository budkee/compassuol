# Bibliotecas
import flask
from flask import request, json, jsonify
import requests

# Inicializando o app
app = flask.Flask(__name__)
## Visualizar as mensagens pelo terminal
app.config["DEBUG"] = True

## Criando a rota da API
@app.route("/", methods=["GET"])

### Função para rota
def index():
    # Recebendo dados
    data = requests.get('https://randomuser.me/api')
    return data.json()

# Configurações de inicialização da API
if __name__ == "__main__":
    ## Onde o aplicativo deverá rodar? -> Container
    app.run(host="0.0.0.0", debug=True, port="5001")
