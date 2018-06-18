#!/bin/sh

docker-compose exec -u oro php bash -c 'cd /var/www/oroapp && php ./app/console clank:server --env=dev'

