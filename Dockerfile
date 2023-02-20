FROM php:7.4-apache
RUN curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      gd \
      gmp \
      exif \
      opcache \
      imap
RUN apt update
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

