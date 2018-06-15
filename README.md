# ca-oro-dev

1. create **.env** from **.env.sample** (put your user id / group id)
1. add `127.0.1.1	ca-oro-dev.localhost` to **/etc/hosts**
1. `mkdir html` ; setup oro code in **html/oroapp** (clone oro git to this directory)
1. `docker-compose up`
1. `./bash.sh`
1. inside php-fpm container and with oro user, follow instructions from here https://oroinc.com/b2b-ecommerce/doc/1.6/install-upgrade/installation-quick-start-dev/commerce-crm#get-application-source-code 

Mysql connection: host: mysql-db-host / db: oro / user: oro_user / pwd: P@ssword123 . To connect to mysql, run a bash in mysql container and use mysql commandline client. Root password: mysql.

Start additional required services with `./services.sh`

Run `./cron.sh` manually when needed


To use debugger:
1. install a xdebug browser extension (like https://addons.mozilla.org/en-GB/firefox/addon/xdebug-helper-for-firefox/ )
1. allow debug connections from IDE, put a breakpoint in entrypoint the first time (like app.php)
1. enable debugging from the browser with the extension on an oro page and request that page
1. enter a method in the code, in phpstorm it will fail the first time, fix the path mapping by setting the right for oro root dir, next debug sessions should be ok
