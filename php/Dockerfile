FROM php:7.4-cli

RUN apt-get update && apt-get install -y \
    libzip-dev \
    autoconf \
    build-essential \
    pkg-config \
    && docker-php-ext-install zip pdo_mysql \
    && pecl install redis xdebug-3.1.6 \
    && docker-php-ext-enable redis xdebug \
    && echo "xdebug.mode=debug" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/xdebug.ini
