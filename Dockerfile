FROM php:7.1-apache
COPY wp-su.sh /bin/wp
RUN pecl install -f xdebug \
&& echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
&& docker-php-ext-install mysqli \
&& a2enmod rewrite
RUN apt update && apt install -y sudo mysql-client \
&& curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
&& chmod +x /bin/wp-cli.phar
