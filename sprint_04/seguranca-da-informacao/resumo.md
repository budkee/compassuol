## Sumário | Segurança da Informação

- [Setup](#setup)
- 
- [Links e outras referências](#links-e-outras-referências)
- [Certificado](#certificado)
      
## Setup
> 
> Você vai precisar instalar os seguintes componentes:
> 
> - [Kali Linux | UTM](https://www.kali.org/docs/virtualization/install-utm-guest-vm/)
> - [OWASP Broken Web Apps](https://sourceforge.net/projects/owaspbwa/)
> 
> ### Instalação do OWASPBWA para Mac com arquitetura M1 Chip
> 
> Para configurar o Kali Linux na VM da UTM, basta seguir esse [tutorial do site oficial](https://www.kali.org/docs/virtualization/install-utm-guest-vm/). Entretanto, ao tentar fazer o mesmo para o arquivo [.ova](https://sourceforge.net/projects/owaspbwa/) do OWASP Broken Web Apps, aparece a seguinte interface de incialização:
> 
> ![erro_UTM_OWASP](./img/erro_UTM_OWASP.png)
> 
> Isso acontece pois o formato `.ova` só pode ser lido pelo [VMware](https://www.vmware.com/) e [VirtualBox](https://www.virtualbox.org/), que são emuladores/máquinas virtuais para arquiteturas Intel. 
> 
> Para seguirmos com a instalação do OWASPBWA, existe a possibilidade, fornecida por [yohilo](https://www.appleayuda.com/pregunta/87153/como-cargar-ova-en-el-chip-mac-m1), de [fazer a conversão](https://github.com/utmapp/UTM/discussions/2521) de `.ova` para `.qcow2` e, assim, emular um sistema com arquitetura Intel pela UTM. Dessa forma, após baixar o arquivo `.ova`, podemos continuar a configuração, pelos seguintes passos:
> 
> 1. [Converta o `.ova` para `.qcow2` por uma VM em Linux](https://www.xmodulo.com/convert-ova-to-qcow2-linux.html)
> 2. [Continue o passo a passo pela discussão do problema no GitHub](https://github.com/utmapp/UTM/discussions/2521#discussioncomment-4110452)
> 

## Testes de Vulnerabilidade

### SQL Injection
### XSS Script

1. Acesse o bWAPP com as credenciais bee e bug.
2. Acesse o bug: "Cross-Site Scripting - Stored (Blog)
**3. Altere o conteúdo da página para parecer que o site não está no ar.**
4. Para resetar o banco de dados, selecione a opção "Reset" no menu suspenso.
**5. Altere também para que apareça uma imagem de sua preferencia na página.**

Perguntas dessa tarefa

Qual código você inseriu para fazer com que o site parecesse fora do ar?

    <script>
    document.body.innerHTML="";
    </script>
    
Qual código você inseriu para fazer com que sua imagem fosse exibida no site?

    <script>
    document.body.innerHTML="";
    var imagem = new Image();
    imagem.src = "https://images.unsplash.com/photo-1692867237471-02d51cf218e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80";
    document.body.appendChild(imagem)
    </script>

### Command Injection
### Local/Remote File Injection (LFI/RFI)
### TCP/IP
### Denial of Service

## Transporte Inseguro
### Tráfego de rede
### SSL e TLS

## Mecanismos de Recuperação de Senhas Vulneráveis

### Brute Force | OWASP ZAP
### Brute Force | CEWL
### Brute Force | HYDRA

## Métodos de Descoberta Automática de Vulnerabilidades

### OWASP ZAP
### Nikto
### WPScan
### Wapiti3 | Python
### GoLismero
- [GoLismero]()

## Métodos para Proteção

### Proxy de Aplicação

Princípios
- Flexibilidade
- Passividade
- Previsibilidade
- Qualidade acima de quantidade

### Modsecurity

É um firewall para proteção de Aplicações Web por meio de regras.

## Links e outras referências
>
> - [OWASP |GitHub](https://github.com/OWASP)
> - [Automatizando Testes de Vulnerabilidades em Aplicações Web com o OWASP ZAP e Python](https://gustavoh.medium.com/automatizando-testes-de-vulnerabilidade-em-aplica%C3%A7%C3%B5es-web-com-o-owasp-zap-e-python-fdcdcf78b587)
> 
> [Voltar para o topo](#sumário--segurança-da-informação)

## Certificado
>
> ![cert-seg-info](./img/cert_seguranca-info.jpg)
>
> [Voltar para o topo](#sumário--segurança-da-informação)