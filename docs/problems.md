### Error 403 por SELinux en VirtualHost personalizado
Al mover el DocumentRoot fuera de /var/www, Apache devolvía error 403 pese a tener permisos correctos.
El análisis de /var/log/audit/audit.log mostró un AVC denial, indicando que los archivos tenían contexto var_t.
Se resolvió asignando el contexto httpd_sys_content_t mediante semanage y restorecon, manteniendo SELinux en modo enforcing.

### PHP no interpretado en Apache (Rocky Linux)
Tras instalar PHP, Apache mostraba el código PHP en lugar de ejecutarlo.
El problema era que en Rocky Linux PHP se ejecuta mediante php-fpm y proxy_fcgi, no con mod_php.
Se solucionó habilitando php-fpm, configurando proxy_fcgi y ajustando los booleanos SELinux necesarios.

