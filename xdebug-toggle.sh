#!/bin/sh

if [ -n "$1" ]
then
	docker-compose exec php bash -c 'mv -v /etc/php.d/15-xdebug.ini.bak /etc/php.d/15-xdebug.ini'
else
	docker-compose exec php bash -c 'mv -v /etc/php.d/15-xdebug.ini /etc/php.d/15-xdebug.ini.bak'
fi

