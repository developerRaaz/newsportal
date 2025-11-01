# Use official PHP image with Apache
FROM php:8.2-apache

# Install mysqli and PDO MySQL extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (optional but recommended)
RUN a2enmod rewrite

# Copy all files to the Apache root directory
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Expose port 80 (Render uses this)
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
