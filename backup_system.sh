#!/bin/bash

DATE=$(date +%F_%H-%M)
DEST="/backups"

mkdir -p $DEST/system/$DATE

tar czf $DEST/apache/apache_$DATE.tar.gz /etc/httpd
tar czf $DEST/prometheus/prometheus_config_$DATE.tar.gz /etc/prometheus
tar czf $DEST/prometheus/prometheus_data_$DATE.tar.gz /var/lib/prometheus

echo "Backup completado: $DATE"
BACKUP_METRIC="/var/lib/node_exporter/textfile_collector/backup.prom"

echo "# HELP backup_last_success_timestamp Timestamp of last successful backup" > $BACKUP_METRIC
echo "# TYPE backup_last_success_timestamp gauge" >> $BACKUP_METRIC
echo "backup_last_success_timestamp $(date +%s)" >> $BACKUP_METRIC

chown node_exporter:node_exporter $BACKUP_METRIC
chmod 644 $BACKUP_METRIC
