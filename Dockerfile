FROM composer:1 AS build-env
COPY . /app
RUN cd /app && composer install

FROM php:7.4.6-apache
ENV PORT 80
EXPOSE 80
COPY --from=build-env /app/vendor /var/www/vendor
COPY --from=build-env /app/src /var/www/html
RUN usermod -u 1000 www-data; \
    a2enmod rewrite; \
    chown -R www-data:www-data /var/www/html
