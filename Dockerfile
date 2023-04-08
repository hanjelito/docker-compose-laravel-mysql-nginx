FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    libzip-dev \
    libicu-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libwebp-dev \
    libonig-dev \
    libxml2-dev \
    && docker-php-ext-install pdo_mysql bcmath exif gd intl zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html


CMD ["php-fpm"]

EXPOSE 9000