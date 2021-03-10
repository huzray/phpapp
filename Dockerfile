FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app \
 && mkdir /app/phpapp \
 && mkdir /app/phpapp/src

COPY src/ /app/phpapp/src

RUN cp -r /app/phpapp/src/* /var/www/html/.
RUN a2enmod rewrite

EXPOSE 80 
