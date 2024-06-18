# Script para levantar a VM com Docker + Trivy e adicionar o Vagrant ao grupo Docker

## Docker Multistage

```bash
# Dockerfile
# Build da imagem

docker image build -t app-go:1.0 .
```

```bash
# Executando a imagem
docker container run -ti --name meu-go app-go:1.0
``` 


