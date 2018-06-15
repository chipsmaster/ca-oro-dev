#!/bin/sh

docker-compose exec -u oro -e COLUMNS="$(tput cols)" -e LINES="$(tput lines)" php-fpm bash
