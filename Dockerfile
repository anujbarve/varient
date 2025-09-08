FROM php:8.2-apache

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set recommended PHP settings for Laravel
RUN docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html
