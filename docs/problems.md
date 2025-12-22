### Error 403 por SELinux en VirtualHost personalizado
Al mover el DocumentRoot fuera de /var/www, Apache devolvía error 403 pese a tener permisos correctos.
El análisis de /var/log/audit/audit.log mostró un AVC denial, indicando que los archivos tenían contexto var_t.
Se resolvió asignando el contexto httpd_sys_content_t mediante semanage y restorecon, manteniendo SELinux en modo enforcing.
