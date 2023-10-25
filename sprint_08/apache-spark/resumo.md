![apache-spark]()
      
## Ambiente de Desenvolvimento | Docker 

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