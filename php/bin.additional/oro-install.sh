#!/bin/sh

cd /var/www/oroapp
rm -rf app/cache/*
rm -rf web/media/cache/*
sed -i "s/installed"\:".*/installed"\:" false/g" app/config/parameters.yml;
time php app/console oro:install --user-name=admin --user-email=gpoletto@clever-age.com --user-firstname=Jean --user-lastname=Bonno --user-password=azeaze --sample-data=y --application-url=http://ca-oro-dev.localhost/ --organization-name=ORO --env=dev --timeout=100000

