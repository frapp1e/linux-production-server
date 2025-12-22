# Hardening del servidor

## Usuarios y privilegios
- Se crea el usuario `fran` como administrador.
- El acceso directo del usuario root se deshabilita.
- La administración se realiza mediante sudo.

## Acceso SSH
- Autenticación exclusivamente mediante clave pública.
- Login por contraseña deshabilitado.
- Acceso limitado únicamente al usuario autorizado.

## Firewall
- firewalld activo.
- Puertos abiertos:
  - SSH (22)
  - HTTP/HTTPS (para servicio web)

## SELinux
- SELinux en modo enforcing.
- Se analizan bloqueos mediante `ausearch` y `journalctl`.

## Fail2ban
- Protección contra ataques de fuerza bruta en SSH.
- Baneo automático tras 3 intentos fallidos.

## Servicio Web
- El servidor utiliza Apache HTTPD como servicio web principal.  
- El servicio se encuentra habilitado y gestionado mediante systemd, con el firewall configurado y SELinux en modo enforcing.

### Hardening Básico

- Propietario y permisos web:
    chown -R apache:apache /srv/webapp
    chmod -R 750 /srv/webapp

- SELinux:
    semanage fcontext -a -t httpd_sys_content_t "/srv/webapp(/.*)?"
    restorecon -Rv /srv/webapp

- Firewall:
    firewall-cmd --permanent --add-service=http
    firewall-cmd --permanent --add-service=https
    firewall-cmd --reload


