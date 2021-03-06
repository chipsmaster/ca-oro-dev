FROM centos:7
ARG ORO_USER_ID
ARG ORO_USER_GROUP_ID

# See https://oroinc.com/b2b-ecommerce/doc/1.6/install-upgrade/installation-quick-start-dev/commerce-crm#step-1-environment-setup
RUN yum install -y epel-release \
	&& yum update -y \
	&& yum install -y wget git nodejs yum-utils less curl vim

RUN wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm && rpm -Uvh remi-release-7.rpm \
	&& yum-config-manager --enable remi-php71 \
	&& yum update -y

RUN yum install -y php-fpm php-cli php-pdo php-mysqlnd php-xml php-soap php-gd php-mbstring php-zip php-intl php-mcrypt php-opcache php-pecl-xdebug

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php \
	&& php -r "unlink('composer-setup.php');" \
	&& mv composer.phar /usr/bin/composer

RUN groupadd --gid $ORO_USER_GROUP_ID oro \
        && useradd --uid $ORO_USER_ID --gid $ORO_USER_GROUP_ID --create-home oro \
        && echo "cd /var/www/oroapp" >> /home/oro/.bashrc \
        && mkdir /home/oro/.composer && chown oro.oro /home/oro/.composer

# Required to run php-fpm manually apparently
RUN mkdir /run/php-fpm

COPY bin.additional /usr/local/bin/

# All conf
COPY etc.additional /etc/

CMD [ "/usr/sbin/php-fpm", "--nodaemonize", "--force-stderr" ]
