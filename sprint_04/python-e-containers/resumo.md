![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

## Sumário | Python e Containers

- [Setup | Docker]()
- [Fundamentos | Docker]()
- [Lista de comandos | Docker]()
- [Exercícios | Python on Docker]()
- [Links e outras referências]()
- [Certificado]()

## Setup | Docker
>
> - [Download e Instalação](https://docs.docker.com/get-docker/)
> - [Instalação pela CLI](https://docs.docker.com/desktop/install/mac-install/#install-from-the-command-line)
> - [Login via Token | CLI](https://docs.docker.com/docker-hub/access-tokens/)
> - [Desinstalar](https://docs.docker.com/desktop/uninstall/)
>

## Fundamentos | Docker

> ### Container | Execução da Imagem
> 
> Container é uma aplicação que serve para um determinado fim. São pacotes de códigos que executam uma ação a partir de uma imagem. Assim, os projetos serão executados dentro dos containers que criamos. Podemos também executar multiplos containers, onde, por exemplo, um possui PHP e outro MySQL.
> 
> Entretanto, containers não são VMs. Os containers não possuem um sistema operacional próprio, ocupa um tamanho de MBs e gastam menos recursos para serem utilizados.
> 
> ### VMs | Máquinas Virtuais
>
> Possuem um sistema operacional próprio, tem tamanho de GBs e podem realizar diversas funções, e por isto, acabam gastando mais recursos.

> ### Imagem | .dockerfile
> 
> A Imagem é a base tecnológica do projeto a ser desenvolvido, estando nela contidas as instruções para configuração do container. Dessa forma o fluxo ocorre, primeiramente, na programação da imagem e, em seguida, na execução da imagem pelo Container.
> 
> - [Imagens | Docker Hub](https://hub.docker.com/)

> ### Builds
> 
> São ...
> 
> - [Build de Imagem | Python](https://docs.docker.com/language/python/build-images/)
> - [Build de Imagem | Java](https://docs.docker.com/language/java/build-images/)
> - [Build de Imagem | Node](https://docs.docker.com/language/nodejs/build-images/)
>
> 
> Acessar a lista de comandos:
> 
>     docker --help
>
> Verificar todos os containers ativos:
> 
>     docker ps -a
> 
> [Criar um container a partir de uma imagem](https://docs.docker.com/engine/reference/commandline/run/):
> 
>     docker run <name-container> [options] <imagem> 
>
> Criar um container de modo iterativo:
>
>     docker run -it <imagem>
>
> Parar um container:
>
>     docker stop <imagem>
>
> Reiniciando um container parado:
> 
>     docker start <name-container>
>
> Rodar um container em background:
>
>     docker run -d <imagem>
>
> Conectar o container ao mundo externo:
>
>     docker run -d -p [porta-meu-pc:porta-container] <imagem>
>     docker run -d -p 80:80 nginx
>     docker run -d -p 3000:80 nginx
>
> 

## Exercícios | Programação Funcional | Python on Docker
>
> - [Programação Funcional](https://www.alura.com.br/artigos/programacao-funcional-o-que-e)
> - [Exercício Container com Docker]()


## Links e outras referências
>
> - [Docker | Visão Geral](https://docs.docker.com/get-started/)
> - [Docker | Documentação](https://docs.docker.com/)
> - [Docker | Guias para Linguagens Específicas](https://docs.docker.com/language/)
> - [Docker | Repo do curso | GitHub](https://github.com/matheusbattisti/curso_docker)
> - [Docker | Manual de comandos via CLI](https://docs.docker.com/engine/reference/commandline/cli/)
