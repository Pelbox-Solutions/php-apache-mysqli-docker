FROM php:8.3.10-apache

RUN apt-get update && apt-get install -y \
        libicu-dev \
    && docker-php-ext-install \
        mysqli \
    && docker-php-ext-enable \
        mysqli
