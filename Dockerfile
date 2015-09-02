FROM php:apache

WORKDIR /var/www/html

COPY config/php.ini /usr/local/etc/php/

RUN rm -rf /var/www/html/*
RUN curl -L -O http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz \
 && tar --strip 1 -xzf dokuwiki-stable.tgz \
 && rm dokuwiki-stable.tgz

VOLUME ["/var/www/html/conf", "/var/www/html/data"]
