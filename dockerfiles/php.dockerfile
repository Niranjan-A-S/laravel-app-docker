FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

# the run command is juts installing some extensions needed for php
# there is no CMD option because the base image will have the CMD to activate the php interpretor