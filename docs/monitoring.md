### Node Exporter

Se descarga dinámicamente la última versión disponible usando la API de GitHub:

curl -s https://api.github.com/repos/prometheus/node_exporter/releases/latest
| grep "browser_download_url"
| grep "linux-amd64.tar.gz"

Se creó un servicio systemd para que Node Exporter arranque con el sistema.
systemctl enable --now node_exporter
Node Exporter escucha por defecto en http://localhost:9100
