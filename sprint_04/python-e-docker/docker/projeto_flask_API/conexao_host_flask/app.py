# Bibliotecas
import flask
from flask import request, json, jsonify
import requests
import flask_mysqldb
from flask_mysqldb import MySQL

# Início
## Inicializando o app
app = flask.Flask(__name__)

## Visualizar as mensagens pelo terminal
app.config["DEBUG"] = True

## Configuração do MySQL
app.config["MYSQL_HOST"] = 'host.docker.internal'
app.config["MYSQL_USER"] = 'root'
app.config["MYSQL_PASSWORD"] = ''
app.config["MYSQL_DB"] = 'flask_host'

# Ciando o objeto para o BD
mysql = MySQL(app)

## Criando a rota de acesso à API
@app.route("/", methods=["GET"])
### Função para rota
def index():
    # Recebendo dados
    data = requests.get('https://randomuser.me/api')
    return data.json()


## Criando a rota de inserção
@app.route("/insert_host", methods=["POST"])
### Função para rota
def insert_host():
    # Requisição dos dados em .json
    data = requests.get('https://randomuser.me/api').json()
    username = data['results'][0]['name']['first']

    # Inserção do dado do usuário no BD
    ## Conexão com o MySQL
    cur = mysql.connection.cursor()
    ## Execução da Query
    cur.execute("""INSERT INTO users(name) VALUES(%s)""", (username))
    ## Salvando a Query
    mysql.connection.commit()
    ## Fechando a conexão
    cur.close()

# Configurações de inicialização da API
if __name__ == "__main__":
    ## Onde o aplicativo deverá rodar? -> Container
    app.run(host="0.0.0.0", debug=True, port="5001")
