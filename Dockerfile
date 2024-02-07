FROM eclipse-mosquitto
RUN apk add --no-cache mosquitto-clients
COPY entrypoint.sh /entrypoint.sh
COPY .mqtt/mosquitto.conf /mosquitto/config/mosquitto.conf
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 1883
EXPOSE 9001
