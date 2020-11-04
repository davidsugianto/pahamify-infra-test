#!/bin/sh

/opt/bitnami/mysql/bin/mysqldump -u root -p$MYSQL_ROOT_PASSWORD -h localhost $MYSQL_DATABASE > /data/mysql-dump/$MYSQL_DATABASE-$(date +\%A).sql
cd /data/mysql-dump && zip $MYSQL_DATABASE-$(date +\%A).zip $MYSQL_DATABASE-$(date +\%A).sql
rm -rf /data/mysql-dump/$MYSQL_DATABASE-$(date +\%A).sql

echo "Database $MYSQL_DATABASE was successfully backed up on $(date +%A-%d.%m.%Y-%H:%M:%S)" >> /mysql-dump/backup-cron.log 
