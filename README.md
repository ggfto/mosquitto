# MQTT Server

![ci status](https://github.com/ggfto/mosquitto/actions/workflows/ci.yml/badge.svg?branch=main)

## English

### Description
MQTT Server pre configured with default options to run 'plug and play'

### How to use

Just run from a terminal:
```sh
docker run -d -p 1883:1883 -p 9001:9001 --name mosquitto ggfto/mosquitto:latest
```

## Português

### Descrição
Servidor MQTT pré-configurado com opções padrão para rodar sem a necessidade de ajustar algo

### Como usar

Apenas execute a partir de um terminal:
```sh
docker run -d -p 1883:1883 -p 9001:9001 --name mosquitto ggfto/mosquitto:latest
```
