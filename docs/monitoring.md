## Monitorización

Se ha desplegado un sistema de monitorización basado en Prometheus y Node Exporter.

- Node Exporter recoge métricas del sistema (CPU, memoria, disco, red).
- Prometheus realiza el scraping cada 15 segundos.
- Servicios gestionados mediante systemd.
- Configuración validada con promtool antes de aplicar cambios.

Targets monitorizados:
- localhost:9090 (Prometheus)
- localhost:9100 (Node Exporter)

