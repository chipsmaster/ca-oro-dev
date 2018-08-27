# ca-oro-dev

Stack for orocommerce CE 3.0

1. create **.env** from **.env.sample** (put your user id / group id)
1. add `127.0.1.1       ca-oro-dev.localhost mailhog.ca-oro-dev.localhost` to **/etc/hosts**
1. setup oro code in **www/oroapp** 
	* `mkdir www`
	* clone oro git to this directory : `git clone -b 3.0 https://github.com/oroinc/orocommerce-application.git oroapp`
	* create/overwrite parameters.yml and other files specific to this installation : `cp -rv oro/* www/oroapp/`)
1. `docker-compose up`
1. install oro
	* (optional) disable xdebug for command line to speed up installation : `./xdebug-disable.sh`
	* `./bash.sh` to get inside php-fpm container with oro user (it would be both administrative and runtime user for oro)
	* `composer install --prefer-dist`
	* launch `oro-install.sh` or install oro manually

Run manually additional required services when needed:
* `./message-consumer.sh`
* `./websocket-server.sh`
* `./cron.sh`

Urls:
* Oro dev: http://ca-oro-dev.localhost/index_dev.php
* Oro: http://ca-oro-dev.localhost/
* Mailhog: http://mailhog.ca-oro-dev.localhost/

Mysql configuration:
* host: mysql-db-host
* db: oro
* user: oro_user
* pwd: P@ssword123

To connect to mysql, run a bash in mysql container and use mysql commandline client. Root password: mysql.

Smtp configuration:
* mailer_transport: smtp
* mailer_host: mailhog-host
* mailer_port: 1025


To use debugger:
1. install a xdebug browser extension (like https://addons.mozilla.org/en-GB/firefox/addon/xdebug-helper-for-firefox/ )
1. allow debug connections from IDE, put a breakpoint in entrypoint the first time (like app.php)
1. enable debugging from the browser with the extension on an oro page and request that page
1. enter a method in the code, in phpstorm it will fail the first time, fix the path mapping by setting the right for oro root dir, next debug sessions should be ok
