FROM php:7-apache
MAINTAINER Albrecht Köhnlein <ak@koehnlein.eu>

# Install packages
RUN apt-get update &&\
    apt-get install -y \
        libxml2-dev libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        imagemagick \
        zlib1g-dev

# Configure PHP
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) mysqli soap gd zip
RUN echo 'always_populate_raw_post_data = -1\nmax_execution_time = 240\nmax_input_vars = 1500\nupload_max_filesize = 32M\npost_max_size = 32M' > /usr/local/etc/php/conf.d/typo3.ini
# memory workaround, see https://stackoverflow.com/a/39535288/7358195
RUN echo 'pcre.jit=0' > /usr/local/etc/php/conf.d/workaround.ini

# Configure Apache as needed
RUN a2enmod rewrite
