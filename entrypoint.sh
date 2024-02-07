#!/bin/sh
if [ ! -f /mosquitto/config/pwfile ]; then
    if [ -n "$USER" ] && [ -n "$PASSWORD" ]; then
    mosquitto_passwd -b -c /mosquitto/config/pwfile "$USER" "$PASSWORD"
    chmod 700 /mosquitto/config/pwfile
    chown mosquitto:mosquitto /mosquitto/config/pwfile
    echo "password_file /mosquitto/config/pwfile" >> /mosquitto/config/mosquitto.conf
    echo "allow_anonymous false" >> /mosquitto/config/mosquitto.conf
    else
    echo "allow_anonymous true" >> /mosquitto/config/mosquitto.conf
    fi
fi
exec mosquitto -c /mosquitto/config/mosquitto.conf