FROM ruby:2.5.5-slim

LABEL Name=futurelearn-drone
LABEL Version=2.5.5

RUN apt-get update -qq && apt-get install -y \
  apt-transport-https \
  curl \
  gpg \
  && apt-get clean

# Dependency for Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Get recent NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

# Fix for https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199
RUN for i in $(seq 1 8); do mkdir -p "/usr/share/man/man${i}"; done

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  chromedriver \
  default-libmysqlclient-dev \
  git \
  imagemagick \
  libgsl0-dev \
  libpq-dev \
  libxml2-dev \
  libxslt-dev \
  mysql-client \
  nodejs \
  phantomjs \
  postgresql-client \
  potrace \
  yarn \
  zip \
  && apt-get clean
