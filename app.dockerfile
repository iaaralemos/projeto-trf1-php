FROM php:7.2-fpm

RUN apt-get update && apt-get install -y libaio1 vim unzip curl libpq-dev

RUN curl -sS http://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Install Postgre PDO
RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

RUN apt-get clean -y