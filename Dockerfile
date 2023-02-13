FROM eclipse-mosquitto
COPY .mqtt/mosquitto.conf /mosquitto/config/mosquitto.conf
EXPOSE 1883
EXPOSE 9001
