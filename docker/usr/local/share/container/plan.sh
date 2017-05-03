#!/bin/bash

function do_setup() {
  chown -R www-data:www-data /app/web/
  do_symfony_console ezplatform:install clean
  do_symfony_console kaliop:migration:migrate
  chown -R build:build /app/web/
}

alias_function do_development_start do_project_development_start_inner
function do_development_start() {
  do_project_development_start_inner
  do_setup
}
