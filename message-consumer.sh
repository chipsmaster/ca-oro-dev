#!/bin/sh

docker-compose exec -u oro php bash -c 'cd /var/www/oroapp && php bin/console oro:message-queue:consume --env=dev -vv'

