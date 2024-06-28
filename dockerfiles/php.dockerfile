FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html 

# the run command is juts installing some extensions needed for php
# there is no CMD option because the base image will have the CMD to activate the php interpretor