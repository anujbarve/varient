FROM php:8.2-apache

# Enable Apache rewrite module (optional)
RUN a2enmod rewrite

# Give www-data ownership of the files
RUN chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html
