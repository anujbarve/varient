FROM php:8.2-apache

# Enable Apache rewrite module
RUN a2enmod rewrite

# Ensure index.php is used as DirectoryIndex
RUN echo "DirectoryIndex index.php index.html" >> /etc/apache2/apache2.conf

# Give ownership to www-data
RUN chown -R www-data:www-data /var/www/html

# Set working directory
WORKDIR /var/www/html
