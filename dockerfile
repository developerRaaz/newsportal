FROM php:8.2-apache

# Copy all files to web root
COPY . /var/www/html/

# Enable Apache mod_rewrite (optional)
RUN a2enmod rewrite

# Expose port 80 for Render
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
