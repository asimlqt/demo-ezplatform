#!/usr/bin/env bash

cp-remote exec -- php app/console cache:clear
cp-remote exec -- chown -R build:www-data app/cache
cp-remote exec -- chmod 775 -R app/cache