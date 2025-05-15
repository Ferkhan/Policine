# Usa una imagen oficial de PHP con Apache
FROM php:8.2-apache

# Copia todo el contenido al directorio web de Apache
COPY . /var/www/html/

RUN docker-php-ext-install pdo pdo_pgsql

EXPOSE 80
# Instala las dependencias necesarias para que funcione postgres y pdo
# RUN apt-get update && apt-get install -y libpq-dev libzip-dev unzip git && \
#     docker-php-ext-install pdo pdo_pgsql zip && \
#     docker-php-ext-enable pdo_pgsql

