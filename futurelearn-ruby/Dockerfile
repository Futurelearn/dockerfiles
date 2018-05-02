FROM ruby:2.5.1-slim

RUN apt-get update -qq && apt-get install -y \
  apt-transport-https \
  curl \
  gpg

# Dependency for Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Get recent NodeJS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  default-libmysqlclient-dev \
  git imagemagick \
  libgsl0-dev \
  libpq-dev \
  libxml2-dev \
  libxslt-dev \
  mysql-client \
  nodejs \
  postgresql-client \
  potrace \
  yarn