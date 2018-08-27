#!/bin/sh

cd /var/www/oroapp
rm -rf var/cache/*
rm -rf public/media/cache/*
sed -i "s/installed"\:".*/installed"\:" false/g" config/parameters.yml;
time php bin/console oro:install --user-name=admin --user-email=jeanbonno@clever-age.com --user-firstname=Jean --user-lastname=Bonno --user-password=azeaze --sample-data=y --application-url=http://ca-oro-dev.localhost/ --organization-name=ORO --env=dev --timeout=100000

