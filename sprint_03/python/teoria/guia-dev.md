## Setup 
> 
> Antes de configurar o ambiente, verifique se você já tem a instalação.
> 
>     python3 --version
> 
> Caso não tenha a instalação, entre no [site](https://www.python.org/downloads/) e baixe a versão mais atualizada e estável, de acordo com o sistema operacional da sua máquina.
>
> Após realizar a instalação, siga os passos do instalador e seu ambiente estará pronto para execução.
> 
> ### Apontar o comando `python3` no PATH do sistema para `python`
> 
> 1. No terminal execute:
> 
>        sudo nano .bashrc
> 
>    Ele irá criar e abrir o arquivo `.bashrc`, caso não encontre no diretório ou no global da máquina. 
>
> 2. No editor de texto, digite: `alias python=python3`. Em seguida, digite `CTRL+O` para salvar e `CTRL+X` para sair.
> 
> 3. De volta ao terminal, execute:
> 
>        source .bashrc
> 
> 4. Teste verificando a versão do python.
>
> ### Executando o codigo.py
> 
> A execução do código pode ser feita de várias formas. A mais comum é pelo terminal, estando dentro do diretório onde se encontra o código, executando o seguinte comando:
> 
>     python codigo.py
> 
> Ou...
> 
>     python3 codigo.py
> 
> É comum encontrar em alguns códigos Python, na primeira linha, o comentário `#!/usr/local/bin/python3`. Este tipo de declaração se chama **Shebang** ou **Hasbang** e serve para que a máquina reconheça qual é o interpretador que deverá executar o código que vem em seguida. É interessante declarar para facilitar a execução do código para usuários que utilizam o _Windows_. Para mais informações, consulte:
> 
> - [Shebang Lines | Python Docs](https://docs.python.org/3/using/windows.html#shebang-lines)
> 
> Por outro lado, essa linha não é necessária para usuários de _Linux_ ou _MacOS_. No contexto dessas SOs, o uso do shebang pode ser interessante para executar o código de modo econômico:
> 
>     ./codigo.py
> 
> Ou...
> 
>     ./codigo
> 
> Neste formato é necessário habilitar a permissão de execução através do comando `chmod`, passando o número referente a permissão que você deseja dar ao **dono** (`u`), **grupo** (`g`) ou **usuário** (`o`) do código. Caso necessite, confira:
> 
> - [Permissões do chmod | Wiki](https://pt.wikipedia.org/wiki/Chmod#Permiss%C3%B5es_num%C3%A9ricas)
>
## Sintaxe
> 
> ### Módulos
> 
> O uso de módulos na programação é comumente utilizada para organização e estruturação do código. Isso facilita a identificação do objeto por parte da `shell` do seu terminal. Dessa forma, é comum você encontrar códigos contendo a seguinte verificação:
> 
>     if __name__ == '__main__':
> 
> O uso dessa verificação é interessante, e recomendável para verificar se o nome do módulo atual for `__main__`, permitindo que o manipulador execute ou não o resto do código. 
> 
