#!/bin/sh

docker-compose exec -u oro php php /var/www/oroapp/bin/console oro:cron --env=dev

