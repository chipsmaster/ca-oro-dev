FROM mysql:5.7

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
COPY conf.additional /etc/mysql/

CMD [ "mysqld" ]

