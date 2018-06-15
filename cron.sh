#!/bin/sh

docker-compose exec -u oro php-fpm php /usr/share/nginx/html/oroapp/app/console oro:cron --env=prod

