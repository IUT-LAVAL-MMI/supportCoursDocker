FROM php:7.4-fpm

LABEL version="1.0"
LABEL description="PHP Basic WebSite"

# Packages recommandés pour l'exploitation de symfony
# Install extensions proposées par php-ext
RUN apt-get update \
  && apt-get install -y git \
    libc-client-dev \
    libkrb5-dev \
    libzip-dev \
    unzip \
    libicu-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    curl \
    wget \
    vim \
    net-tools\
  && rm -r /var/lib/apt/lists/* \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
  && docker-php-ext-install -j$(nproc) \
    zip \
    intl \
    opcache \
    gd \
    mysqli pdo pdo_mysql \
    imap

# Configuration de pecl derrière un proxy si requis
RUN test -z "${http_proxy}" || pear config-set http_proxy ${http_proxy}

# Install extensions proposées par pecl (mais pas par php-ext)
# Activation extensions
RUN pecl install xdebug \
  && pecl install apcu \
  && pecl install mongodb \
  && pecl install propro \
  && pecl install raphf \
  && docker-php-ext-enable \
    zip \
    intl \
    opcache \
    gd \
    mysqli pdo pdo_mysql \
    xdebug \
    apcu \
    mongodb \
    propro \
    raphf

#création dossier pour les log
RUN touch /var/log/xdebug.log \
  && chmod 777 /var/log/xdebug.log

# Nettoyage
RUN rm -rf /var/lib/apt/lists/*

# going back
WORKDIR /var/www/html