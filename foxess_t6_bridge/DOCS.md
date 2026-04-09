# FoxESS T6 Bridge

Bridge dla falowników FoxESS T-series ver 3.47/3.01/0.01, który:
- odbiera ramki z EE11A
- publikuje dane do MQTT
- tworzy encje w Home Assistant przez MQTT Discovery

## Wymagania
- FoxESS T-series
- Elfin EE11A
- Broker MQTT w Home Assistant

## Konfiguracja

```yaml
ee11a_host: 192.168.1.49
ee11a_port: 502