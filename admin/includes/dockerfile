# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy all project files into the Apache root directory
COPY . /var/www/html/

# Expose the port Render will use
EXPOSE 10000

# Start Apache server
CMD ["apache2-foreground"]