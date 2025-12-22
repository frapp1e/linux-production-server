# 🔥 Proyecto: Administrador Linux en Producción

---

## 🧱 Entorno
- Sistema operativo: Rocky Linux 9 / Ubuntu Server 22.04
- Usuario principal: `fran` (sudo)
- Servicios: Nginx, Apache, Prometheus, Node Exporter, Grafana
- Seguridad: SSH por clave, root deshabilitado, fail2ban, firewall, SELinux/AppArmor
- Backups: Automáticos mediante `tar` y systemd timer
- Automatización: Scripts Bash y systemd service + timer

---

## 🐧 Administración de usuarios y grupos
- Creación de usuarios y grupos para servicios críticos (`prometheus`, `node_exporter`)
- Configuración de permisos mínimos según principio de privilegios
- Uso de `sudo` limitado para tareas administrativas

---

## 🔐 Seguridad
- SSH: acceso solo por clave, root deshabilitado
- Fail2ban: protección contra intentos de brute-force
- Firewall: reglas básicas configuradas para servicios web y monitorización
- SELinux: política explicada y activada
- Actualizaciones automáticas: aplicadas a todo el sistema

---

## 🌐 Servicios Web
- **Nginx / Apache**: servidor web simple
  - Contenido: HTML estático o PHP básico
  - Configuración de virtual hosts
- Verificación de funcionamiento con `curl` y navegador

---

## 📈 Monitorización
- **Node Exporter**: métricas del sistema
- **Prometheus**: scraping de Node Exporter y reglas de alerta
- **Grafana**: dashboards propios con visualización de métricas
- Alertas configuradas para caídas de servicios:
  - Integración con **Telegram Bot** para notificaciones en tiempo real

---

## 💾 Backups
- Script `backup_system.sh` que genera backups diarios de:
  - Apache (`/etc/httpd`)
  - Prometheus (`/etc/prometheus`)
  - Sistema (`/etc` y `/home`)
- Almacenamiento en `/backups` con estructura por tipo:
