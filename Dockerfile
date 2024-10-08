# Use the official PHP image
FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Install PHP extensions if needed
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy application files to the container
COPY . /var/www/html

# Expose port 80
EXPOSE 80
