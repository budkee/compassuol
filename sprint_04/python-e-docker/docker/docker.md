![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

## Sumário
- [Fundamentos](#fundamentos)
- [Exercícios](#exercícios--trilha-compassuol)
- [Certificado](#certificado-do-curso)

## Fundamentos

### Container | Ambiente de Desenvolvimento
> 
> Container é uma aplicação que serve para um determinado fim. São pacotes de códigos que executam uma ação a partir de uma imagem. 
> 
> Assim, os projetos e toda tecnologia pré-configurada serão executadas dentro dos containers que criamos, isolando o ambiente de desenvolvimento e/ou produção. Podemos também executar multiplos containers, onde, por exemplo, um possui PHP e outro MySQL.
> 
> ### Containers são VMs? 
>
> Containers não são VMs. Os containers não possuem um sistema operacional próprio, ocupa um tamanho de MBs e gastam menos recursos para serem utilizados.
> Por outro lado, as VMs possuem um sistema operacional próprio, tem tamanho de GBs e podem realizar diversas funções, e por isto, acabam gastando mais recursos.

### Imagens | Ferramentas de Produção
> 
> A Imagem é a base tecnológica do projeto a ser desenvolvido, estando nela contidas todas configurações de ambiente da tecnologia de interesse. 
>
> A construção da imagem deve primeiro ser declarada no arquivo `Dockerfile`, onde estão contidas as instruções para configuração do container. 
>
> No geral, o fluxo ocorre, primeiramente, na programação/descrição da imagem/`Dockerfile`, passando para construção/`build -t <nome-imagem>:tag`, seguido da execução da imagem pelo Container `run <ID-imagem>`.
> 
> #### Comandos
>
> Listando as imagens
>
>     docker images
>
> #### Criando sua própria imagem
>
> 1. Crie um arquivo `Dockerfile` na pasta do projeto.
> 2. Configure as instruções da imagem:
> 
>   - `FROM`: imagem base;
>   - `WORKDIR`: diretório da aplicação;
>   - `EXPOSE`: porta da aplicação;
>   - `COPY`: quais arquivos precisam ser executados;
>
> #### Enviando sua imagem para o [Hub](https://hub.docker.com/)
>
> 1. Crie a imagem com o nome do repositório do hub.
>
>        docker build -t <repositorio>:<tag> .
>
>
> 2. Envie a imagem ao Hub
>
>        docker push <repositorio>:<tag>
>
> #### Atualizando a imagem no Hub
>
> 1. Faça o build com uma nova tag da imagem
>
>        docker build -t <repositorio>:<tag-nova> .
>
> 2. Faça o push para o Hub
>
>        docker push <repositorio>:<tag-nova>
>
>
> #### Usando a imagem do Hub
>
> 1. Baixe a imagem para sua máquina
>
>        docker pull <repositorio-da-imagem>
>
> 2. Crie um novo container para imagem
>
>        docker run <repositorio-da-imagem>
>

### Builds | Construção da Imagem
> 
> É o procedimento final a ser realizado após a construção de uma imagem personalizada no `Dockerfile`. Caso você realize alguma alteração no código, o build da imagem deverá ser feito novamente.
> 
> Dentro do repositório do projeto, execute: 
>
>     docker build .
>
> Nomear a tag durante o build
>
>     docker build -t <nome>:<tag> .
>

### Comandos | Geral
>
> Acessar a lista de comandos
> 
>     docker --help
>
> Verificar todos os containers ativos
> 
>     docker ps -a
> 
> Criar um container a partir de uma imagem
> 
>     docker run <name-container> [options] <ID-imagem> 
>
> Criar um container de modo iterativo
>
>     docker run -it <ID-imagem>
>
> Reiniciar um container de modo iterativo
>
>     docker start -i <ID-imagem>
>
> Parar um container
>
>     docker stop <ID-imagem>
>
> Remover um container a força
>
>     docker rm -f <id>
>
> Reiniciando um container parado
> 
>     docker start <name-container>
>
> Rodar um container em background (detached)
>
>     docker run -d <imagem>
>
> Conectar o container ao mundo externo
>
>     docker run -d -p [porta-meu-pc:porta-container] <imagem>
>     docker run -d -p 80:80 nginx
>     docker run -d -p 3000:80 nginx
>
> Acessando o log de um container
> 
>     docker logs <nome-container>
> 
> Download de imagens
>
>     docker pull <imagem>
>
> Nomear imagens
>
>     docker tag <ID-imagem> <nome>
>
> Colocar tags nas imagens
>
>     docker tag <ID-imagem> <nome>:<tag>
>
> Remover todas as imagens e containers
>
>     docker system prune
>
> Utilizar e remover o container após o `docker stop`
>
>     docker run -rm <container>
>
> Copiar arquivos de container -> diretorio ou diretório -> container
>
>     docker cp meu_arquivo.txt meu_container:/app/
>     docker cp meu_container:/app/ meu_arquivo.txt
>
> Iniciando a sua sessão
> 
>     docker login
> 
> Finalizando a sessão
> 
>     docker logout
>
> Salvando arquivos na sua máquina | Bind mount
> 
>     docker run -d -p <porta-local>:<porta-EXPOSE> --name <container> -v <caminho-dir-para-salvar_arquivos-sua-maquina>:<caminho-WORKDIR/dir-para-salvar_arquivos-container> --rm <imagem>
>
> Atualizar o projeto em tempo real | Bind mount
>
>     docker run -d -p <porta-local>:<porta-EXPOSE> --name <container> -v <caminho-dir-do-projeto-sua-maquina>:<caminho-WORKDIR/dir-do-projeto-container> --rm <imagem>
> 
> Criando um volume
>
>     docker volume create <nome-volume>
>
> Analisando um volume
> 
>     docker volume inspect <nome-volume>
> 
> Removendo volumes
>
>     docker volume rm <nome-volume>
> 
> Removendo volumes não utilizados (Volumes anônimos)
>
>     docker volume prune
> 
> Criando volumes de apenas leitura (ro)
> 
>     docker run -v volume:/data:ro
> 
> 

### Comandos | Análise de Uso
>
> Detalhes do container
> 
>     docker top <container>
>
> Verificar os dados do container
>
>     docker inspect <container>
>
> Verificar o processamento de todos os containers em tempo real
>
>     docker stats
>

## Tipos de conexão | Networks
>
> - Container <-> Externa(APIs)
> - Container <-> Host-Docker
> - Container <-> Container
>

## Tipos de redes | Drivers
>
> - **bridge:** conexão padrão dos conteiners
> - **host:** conexão da máquina que hospeda o Docker e um container
> - **macvlan:** conexão a um conteiner via MAC address
> - **none:** remove todas as conexões
> - **plugins:** permite a entrada de extensões de terceiros para criar outras redes
>


## Exercícios | Trilha CompassUOL

### Sobre

Nestes exercícios estaremos aprendendo a utilizar containers em conjunto com scripts Python. 

O objetivo será **gerar imagens que permitam facilmente executar nosso código, instalando dependências e executando outras tarefas de configuração necessárias de forma transparente**.

### Perguntas do exercício

1. Construa uma imagem a partir de um arquivo de instruções (Dockerfile) que execute o código carguru.py. Após, execute um container a partir da imagem criada. Registre aqui o conteúdo de seu arquivo Dockerfile e o comando utilizado para execução do container.
    
    > 1.1 Configuração do `Dockerfile`:
    > - [Dockerfile](./exercicio-docker-00/Dockerfile)
    > 
    > 1.2 Build da Imagem:
    > - Comando para execução do build: `docker build -t python-compass .`
    > 
    > 1.3 Construção de um container a partir da imagem:
    > - Comando para execução do container: `docker run -it --name compass_conteiner 7df733590bfe`

2. É possível reutilizar containers? Em caso positivo, apresente o comando necessário para reiniciar um dos containers parados em seu ambiente Docker? Não sendo possível reutilizar, justifique sua resposta.
    
    > - Sim. Existem duas possibilidades: 
    >
    >    1. `docker start -i <nome-container>`: para reiniciar o container no modo interativo;
    >    2. `docker restart <nome-container>`: para reiniciar o container trabalhando com portas;

3. Agora vamos exercitar a criação de um container que permita receber inputs durante sua execução. Seguem as instruções:

    > 3.1 Crie um novo script Python que implementa o algoritmo a seguir:
    >
    > 3.1.1 Receber uma string via input
    >
    > 3.1.2 Gerar o hash da string por meio do algoritmo SHA-1
    > 
    > 3.1.3 Imprimir o hash em tela, utilizando o método hexdigest
    >
    > 3.1.4 Retornar ao passo 1

2. Criar uma imagem Docker chamada `mascarar-dados` que execute o script Python criado anteriormente.

3. Iniciar um container a partir da imagem, enviando algumas palavras para mascaramento

4. Registrar o conteúdo do script Python, arquivo Dockerfile e comando de inicialização do container neste espaço
    > Resposta:
    > 
    > - [Script](./exercicio-docker-01/input-container.py)
    > - [Dockerfile](./exercicio-docker-01/Dockerfile)
    > - Comando: `docker run -it --name compass_mascarar-dados 746660b064b3`

## Ambiente de Desenvolvimento | Jupyter Notebook + Pyspark + AWS Glue

    docker run -it -v <ArquivosConfigAwsCLI>:/home/glue_user/.aws -v <DiretorioOndeVaiSerArmazenadoOsNotebooks>:/home/glue_user/workspace/jupyter_workspace/ -e AWS_PROFILE=<NomePerfilAWS> -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 -p 8998:8998 -p 8888:8888 --name glue_jupyter_lab amazon/aws-glue-libs:aws-glue-libs:glue_libs_4.0.0_image_01 /home/glue_user/jupyter/jupyter_start.sh

### Comando para execução do ambiente

    docker run -it 
    
    -v <ArquivosConfigAwsCLI>:/home/glue_user/.aws 
    -v <DiretorioOndeVaiSerArmazenadoOsNotebooks>:/home/glue_user/workspace/jupyter_workspace/ 
    -e AWS_PROFILE=<NomePerfilAWS> 
    -e DISABLE_SSL=true 
    
    --rm 
    
    -p 4040:4040 
    -p 18080:18080 
    -p 8998:8998 
    -p 8888:8888 
    
    --name glue_jupyter_lab 
    
    amazon/aws-glue-libs:aws-glue-libs:glue_libs_4.0.0_image_01 /home/glue_user/jupyter/jupyter_start.sh

## Links e Referências

- [Docker Security | OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html)

## Certificado do curso

![cert](../img/cert-docker.jpg)