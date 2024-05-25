FROM golang as BUILD

COPY app.go /go/src/app/

#variavel de ambiente para executar o app de qualquer lugar do container
ENV GO111MODULE=auto

WORKDIR /go/src/app/

RUN go build -o app.go .
# Fim do primeiro estágio da imagem criada com o nome 'BUILD'

# Inicio do segundo estagio
FROM alpine 

#Cria a pasta e acessa ela 
WORKDIR /appexec

#Faz a copia do executavel gerado pelo RUN no final do primeiro estagio
COPY --from=BUILD /go/src/app /appexec

RUN chmod 755 /appexec

ENTRYPOINT ./app.go


