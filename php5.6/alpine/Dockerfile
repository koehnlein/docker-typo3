FROM alpine:3.5

# Install packages
RUN apk --no-cache add \
         apache2 \
         php5-apache2 \
         php5-mysqli php5-soap php5-gd php5-zip php5-pdo php5-mysql php5-json php5-curl php5-xml php5-xdebug \
         imagemagick

# find xdebug extension
RUN echo "zend_extension=$(find /usr/lib/php5/modules/ -name xdebug.so)" > /etc/php5/conf.d/xdebug-extension.ini

# add configuration files
COPY ../../additional/alpine-apache.conf /etc/apache2/conf.d/
COPY ../../additional/php-* /etc/php5/conf.d/

# start apache
RUN mkdir -p /run/apache2
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND

WORKDIR /var/www

EXPOSE 80
