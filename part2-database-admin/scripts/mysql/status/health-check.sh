#!/bin/sh

STATUS=$(pgrep mysql | wc -l);

if [ "$STATUS" -ne 1 ];
then
        echo "$(date +%A-%d.%m.%Y-%H:%M:%S) MySQL service is not running" >> /mysql-health/health-check.log;
        sudo service mysql restart

else
        echo "$(date +%A-%d.%m.%Y-%H:%M:%S) MySQL service is running" >> /mysql-health/health-check.log;
fi
