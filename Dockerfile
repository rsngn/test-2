FROM php:8.0-apache

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget \
    unzip

# php packages
RUN docker-php-ext-install mysqli pdo_mysql gettext\
    && docker-php-ext-enable mysqli 

# boxbilling
RUN wget https://github.com/boxbilling/boxbilling/releases/download/4.22.1.5/BoxBilling.zip \
    && unzip -o BoxBilling.zip -d /var/www/html/ \
    && cp /var/www/html/bb-config-sample.php /var/www/html/bb-config.php

EXPOSE 80