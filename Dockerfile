FROM php:7.4-apache
USER root


RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN apt-get install -y vim less

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN mkdir -p /var/www/html
ARG SRC_PATH="./src"
COPY ${SRC_PATH} /var/www/html
WORKDIR /var/www/html
