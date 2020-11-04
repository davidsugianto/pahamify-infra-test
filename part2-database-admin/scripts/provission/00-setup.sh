#!/bin/sh

apt update -y && apt install apt-utils cron
echo "Database is not ready"
echo "Add Permission Database ${MYSQL_DATABASE} to ${MYSQL_USER}"
mysql --user=root --password=${MYSQL_ROOT_PASSWORD} --execute="GRANT ALL ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}';"

echo "Database ${MYSQL_DATABASE} is ready"
