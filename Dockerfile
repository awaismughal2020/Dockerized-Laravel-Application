FROM php:8.2-fpm


# Install dependencies
RUN apt-get update \
    && apt-get install -y \
        libonig-dev \
        libzip-dev \
        zip \
        unzip \
        curl \
        libpq-dev \
    && docker-php-ext-install \
        pdo_mysql \
        pdo_pgsql \
        bcmath \
        zip

# Set recommended PHP.ini settings
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Copy the application files
COPY . /var/www/html

# Install application dependencies
RUN composer install --no-dev

# Generate the application key
RUN php artisan key:generate

# Set folder permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 8000
EXPOSE 8000

# Start the application
CMD php artisan serve --host=0.0.0.0 --port=8000
