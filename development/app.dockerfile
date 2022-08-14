FROM php:7.4-fpm

COPY composer.lock composer.json /var/www/

COPY database /var/www/database

WORKDIR /var/www

RUN apt-get update && apt-get -y install git && apt-get -y install zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" 
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" 
RUN php composer-setup.php 
RUN php -r "unlink('composer-setup.php');" 
RUN php composer.phar install --no-dev --no-scripts


COPY . /var/www


RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

RUN php artisan cache:clear

RUN php artisan optimize

RUN  apt-get install -y libmcrypt-dev libmagickwand-dev --no-install-recommends && pecl install mcrypt-1.0.5 && docker-php-ext-install pdo_mysql && docker-php-ext-enable mcrypt

RUN mv .env.prod .env

RUN php artisan optimize
