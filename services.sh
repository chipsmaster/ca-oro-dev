#!/bin/sh

docker-compose exec -T -u oro php-fpm bash -c 'cd /usr/share/nginx/html/oroapp && php ./app/console clank:server --env=prod' &

for n in 1 2
do
	docker-compose exec -T -u oro php-fpm bash -c 'cd /usr/share/nginx/html/oroapp && php ./app/console oro:message-queue:consume --env=prod' &
done

wait

