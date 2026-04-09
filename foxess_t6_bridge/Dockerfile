ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    python3 \
    py3-paho-mqtt

COPY run.sh /
COPY foxess_t6_mqtt_bridge.py /foxess_t6_mqtt_bridge.py

RUN chmod a+x /run.sh

CMD ["/run.sh"]