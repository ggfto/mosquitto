# MQTT Server

![ci status](https://github.com/ggfto/mosquitto/actions/workflows/ci.yml/badge.svg?branch=main)

## English

### Description
MQTT Server pre configured with default options to run 'plug and play'. User and password can be set with `USER` and `PASSWORD` parameters.

### How to use

Just run from a terminal:
```sh
docker run -d -p 1883:1883 -p 9001:9001 --name mosquitto ggfto/mosquitto:latest
```
With user and password:
```sh
docker run -d -p 1883:1883 -p 9001:9001 -e USER=myuser -e PASSWORD=mypassword --name mosquitto ggfto/mosquitto:latest
```

## Português

### Descrição
Servidor MQTT pré-configurado com opções padrão para rodar sem a necessidade de ajustar algo. Usuário e senha podem ser configurados com os parâmetros `USER` e `PASSWORD`

### Como usar

Apenas execute a partir de um terminal:
```sh
docker run -d -p 1883:1883 -p 9001:9001 --name mosquitto ggfto/mosquitto:latest
```
Com usuário e senha:
```sh
docker run -d -p 1883:1883 -p 9001:9001 -e USER=myuser -e PASSWORD=mypassword --name mosquitto ggfto/mosquitto:latest
```
