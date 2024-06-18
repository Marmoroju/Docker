# Script para levantar a VM com Docker + Trivy e
adicionando o vagrant ao grupo docker

## Docker Multistage

```bash
#Dockerfile
#Build da imagem

docker image build -t app-go:1.0 .
```

```bash
#Executando a imagem
docker container run -ti --name meu-go app-go:1.0
``` 


