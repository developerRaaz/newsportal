# Use the official PHP 8.2 image with Apache
FROM php:8.2-apache

# Install MySQLi and PDO extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Copy all files into the Apache root directory
COPY . /var/www/html/

# Expose Render's default port
EXPOSE 10000

# Start Apache
CMD ["apache2-foreground"]