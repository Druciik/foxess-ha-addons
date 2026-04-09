#!/usr/bin/with-contenv bashio
set -e

export EE11A_HOST="$(bashio::config 'ee11a_host')"
export EE11A_PORT="$(bashio::config 'ee11a_port')"

export MQTT_HOST="$(bashio::services mqtt 'host')"
export MQTT_PORT="$(bashio::services mqtt 'port')"
export MQTT_USER="$(bashio::services mqtt 'username')"
export MQTT_PASS="$(bashio::services mqtt 'password')"

bashio::log.info "Starting FoxESS bridge"
bashio::log.info "EE11A: ${EE11A_HOST}:${EE11A_PORT}"
bashio::log.info "MQTT: ${MQTT_HOST}:${MQTT_PORT}"

exec python3 -u /foxess_t6_mqtt_bridge.py