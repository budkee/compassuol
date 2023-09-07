# Comandos

## Iniciando o swarm

    docker swarm init --advertise-addr (IP da instância)
    
## Saindo do swarm

    docker swarm leave -f

## Listando nodes

    docker node ls

## Adicionando nodes | Token

    docker swarm join-token manager 

    docker swarm join --token <TOKEN> <IP>:<PORTA>

## Subindo um novo serviço

    docker service create --name <nome> -p <porta>:<porta> <imagem>

## Listando serviços

    docker service ls

## Removendo serviços

    docker service rm

## Replicando serviços | Orquestração

    docker service create --name <nome> -p <porta>:<porta> --replicas <numero-de-replicas> <imagem>