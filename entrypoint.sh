#!/bin/sh
if [ ! -f /mosquitto/config/pwfile ]; then
    echo "pwfile not present..."
    if [ -n "$USER" ] && [ -n "$PASSWORD" ]; then
    echo "setting up credentials..."
    mosquitto_passwd -b -c /mosquitto/config/pwfile "$USER" "$PASSWORD"
    echo "{'user':'$USER','pass':'$PASSWORD'}" >> /home/mqtt_auth.json
    chmod 700 /mosquitto/config/pwfile
    chown mosquitto:mosquitto /mosquitto/config/pwfile
    echo "password_file /mosquitto/config/pwfile" >> /mosquitto/config/mosquitto.conf
    echo "allow_anonymous false" >> /mosquitto/config/mosquitto.conf
    else
    echo "setting up anonymous mode..."
    echo "allow_anonymous true" >> /mosquitto/config/mosquitto.conf
    fi
else
echo "pwfile present, skipping credential configuration...
fi
exec mosquitto -c /mosquitto/config/mosquitto.conf