## Monitorización

Se ha desplegado un sistema de monitorización basado en Prometheus y Node Exporter.

- Node Exporter recoge métricas del sistema (CPU, memoria, disco, red).
- Prometheus realiza el scraping cada 15 segundos.
- Servicios gestionados mediante systemd.
- Configuración validada con promtool antes de aplicar cambios.

Targets monitorizados:
- localhost:9090 (Prometheus)
- localhost:9100 (Node Exporter)

## Grafana

Grafana se ha desplegado como plataforma de visualización.

- Servicio gestionado por systemd.
- Autenticación local.
- Integrado con Prometheus como fuente de datos.
- Dashboard profesional importado (Node Exporter Full - ID 1860).
- Dashboard propio creado para métricas clave del sistema.

Acceso:
- Puerto: 3000
- Prometheus: puerto 9090
- Node Exporter: puerto 9100
