#!/usr/bin/env bash

# run.sh is a command line tool that makes it easy to start up the
# rails application.  it needs no parameters.  just run it from your
# terminal.  run.sh is safe to run multiple times if a command fails.
#
# Usage:
# $ ./run.sh
#

fancy_echo() {
  printf "\e[42m\e[90m===> %b\e[0m\n" "$1"
}

fancy_error() {
  printf "\e[41m\e[90m===> %b\e[0m\n" "$1"
}

if command -v rbenv &>/dev/null || command -v rvm &>/dev/null; then
  fancy_echo "Found a ruby manager"
else
  fancy_error "Did not find a ruby manager like rvm or rbenv"
  fancy_error "Please install a ruby manager and a version of ruby >=2.5.1"
  fancy_error "exiting"
  exit 1
fi

version=$(ruby -v | cut -f2 -d' ')
if [[ "$version" =~ ^2.5.1.* ]]; then
  fancy_echo "Using ruby 2.5.1 or greater"
else
  fancy_error "Please use ruby >=2.5.1"
  fancy_error "exiting"
  exit 1
fi

if command -v bundle &>/dev/null; then
  fancy_echo "Found bundle"
else
  fancy_error "Did not find the bundler gem.  Install it using: gem install bundler"
  fancy_error "exiting"
  exit 1
fi

fancy_echo "Installing gems to vendor/bundle"
bundle install --path vendor/bundle

fancy_echo "Migrating database"
bin/rails db:migrate

fancy_echo "Starting the rails server listening on port 3000"
bin/rails server

