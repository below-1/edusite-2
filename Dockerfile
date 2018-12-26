FROM php:5.6.38-apache
RUN docker-php-ext-install pdo pdo_mysql mysqli
ADD php.ini /usr/local/etc/php
