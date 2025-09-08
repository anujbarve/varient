FROM php:8.2-apache

RUN a2enmod rewrite

# Set Laravel public as DocumentRoot
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

# Give www-data ownership of the app
RUN chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html
