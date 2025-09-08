FROM php:8.2-apache

# Install GD extension and other common PHP extensions
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

COPY . /var/www/html/

RUN chmod -R 775 /var/www/html/uploads

# Set owner to www-data (Apache user)
RUN chown -R www-data:www-data /var/www/html


RUN a2enmod rewrite

# Expose port 80
EXPOSE 80
