FROM quay.io/continuouspipe/ez6-apache-php7:stable

COPY ./docker/usr/ /usr/

COPY . /app
WORKDIR /app

ARG GITHUB_TOKEN=
RUN container build
