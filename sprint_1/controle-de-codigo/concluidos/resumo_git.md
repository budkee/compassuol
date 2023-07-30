
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)

## Sumário | Git

- [x] Setup
- [x] Fundamentos
- [x] Lista de Comandos | Rotina

## Setup

> Para verificar se você já possui o `git` instalado na sua maquina, vá no terminal e digite:
>
>     git --version 
>
> - [Setup no Linux](https://git-scm.com/download/linux)
>
> - [Setup no Mac](https://git-scm.com/download/mac)
>
> - [Setup no Windows](https://git-scm.com/download/windows)

## Fundamentos

> **O que é Git?**
> 
> É o sistema de controle de versão mais utilizado no mundo atualmente. Ele é baseado em repositórios que contém todas as versões já commitadas e as cópias realizadas pelos desenvolvedores.
>
> **Por quê usar Git?**
>
> - Sistema Otimizado: possui um alto desempenho em suas operações;
> - Segurança: todos os objetos do git são protegidos com criptografia;
> - Projeto de Código-Aberto: livre distribuição de código;
>
> **[Estados do Git](https://petcomputacaoufrgs.github.io/intro-ao-git/staging-area.html#:~:text=A%20staging%20area%20%C3%A9%20o,podem%20estar%20em%20quatro%20estados)**
> 
> - Staged: arquivos rastreados e modificados que estão prontos para serem commitados;
>   
> - Modified: arquivos rastreados e modificados que não foram adicionados ao `staged`;
>
> - Unmodified: arquivo rastreado pelo último commit que não teve modificações na versão atual;
>   
> - Untracked: arquivo não rastreado pela versão atual;
>
> 


## Lista de Comandos | Rotina 

> **Inicializar o git no repositório**
>
>     git init
>   
> **Clona os arquivos do servidor para o repositorio local**
>
>     git clone [URL] .
>
> **Verifica o status do repositório local**
>
>     git status
>
> **Mapeia todos os arquivos modificados ao stage**
>
>     git add .
>    
> **Enviar o commit com uma mensagem (-m) incluindo todas as modificações (-a)**
> 
>     git commit -a -m "mensagem"
> 
> **Enviar as modificações (commits) para o servidor**
> 
>     git push
> 
> **Receber todas as modificações do servidor**
> 
>     git pull
> 
> 
> 
> **Criar uma nova branch (-b) e alternar para a mesma(checkout)**
> 
>     git checkout -b nome_da_branch
>