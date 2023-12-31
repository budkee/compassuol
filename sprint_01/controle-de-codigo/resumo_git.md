![git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)

## Sumário | Git

- [x] [Setup](#setup)
- [x] [Fundamentos](#fundamentos)
- [x] [Lista de comandos](#lista-de-comandos--desenvolvimento-individual)
- [x] [Gestão e Manipulação do código-fonte](#gestão-e-manipulação-do-código-fonte)
- [x] [Links e outras referências](#links-e-outras-referências)
- [x] [Certificado](#certificado)
      
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

## Lista de Comandos | Desenvolvimento Individual

> > Todos os comandos devem ser executados dentro da pasta de interesse
>
> Inicializar o git no repositório
>
>     git init
>   
> Clona os arquivos do servidor para o repositorio local
>
>     git clone [URL] .
>
> > Ao clonar o repo, crie um token de acesso pelas configuracoes do seu perfil do github e coloque no momento em que o terminal pedir a senha.
> 
> 
> Verifica o status do repositório local
>
>     git status
>
> Mapeia todos os arquivos modificados ao stage
>
>     git add .
>    
> Enviar o commit com uma mensagem (-m) incluindo todas as modificações (-a)
> 
>     git commit -a -m "mensagem"
> 
> > Apos commitar, o git ira pedir pra voce dizer quem e'. Para isso fa'ca:
> > 
> >     git config --global user.email "you@example.com" 
> >     git config --global user.name "Seu nome" 
> 
> Enviar as modificações (commits) para o servidor
> 
>     git push
> 
> Receber todas as modificações do servidor
> 
>     git pull
>
> Baixar todas os arquivos do servidor
>
>     git fetch
> 
> Guardar as alterações na "lixeira"
>
>     git stash 
> 
> Retirar o versionamento de código de um diretório-mãe
>
>     git rm -rf .git 

## Lista de Comandos | Desenvolvimento em Equipe
> 
> Criar uma nova branch (-b) e alternar para a mesma (checkout)
>
>     git checkout -b nome_da_branch
>
> Unir duas branches
>
>     git merge branch_1 branch_2
>
> Baixar os arquivos do repositório da branch de interesse
>
>     git fetch branch
> 
> Verificar as alterações
>
>     git log

### Gestão e Manipulação do código-fonte
>
> Mover ou renomear arquivos/diretórios
>
>     git mv arquivo/diretorio
>
> Remover arquivos da Árvore de Trabalho
>
>     git rm arquivo
>
> Mover de uma branch para outra
>
>     git switch branch
>
> Criar uma nova versão de código
>
>     git tag nome_da_tag
>
> Deletar uma versão do código
>
>     git tag -d
>
> Listar as versões existentes
>
>     git tag -l
>
> Corrigir um commit
> 
> 1. Encontre a hash do commit que você deseja alterar com `git log`.
> 2. No terminal, execute o comando `git rebase -i <hash_do_commit_anterior_ao_que_você_quer_editar>`.
> 3. Encontre o commit que você deseja renomear e mude a palavra "pick" para "reword" ou "r" em frente a esse commit.
> 

## Links e outras referências
>
> - [Documentação Git](https://git-scm.com/docs/git)
> 

## Certificado
>
> ![certificado](./img/[2023]git_github.jpg)
