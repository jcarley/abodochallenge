#!/usr/bin/env bash

fancy_echo() {
  printf "\e[42m\e[90m===> %b\e[0m\n" "$1"
}

if command -v rbenv &>/dev/null || command -v rvm &>/dev/null; then
  fancy_echo "Found a ruby manager"
else
  fancy_echo "Did not find a ruby manager like rvm or rbenv"
  fancy_echo "Please install a ruby manager and a version of ruby >=2.5"
  fancy_echo "exiting"
  exit 1
fi

if command -v bundle &>/dev/null; then
  fancy_echo "Found bundle"
else
  fancy_echo "Did not find the bundler gem.  Install it using: gem install bundler"
  fancy_echo "exiting"
  exit 1
fi

fancy_echo "Installing gems to vendor/bundle"
bundle install --path vendor/bundle

fancy_echo "Starting the rails server listening on port 3000"
bin/rails server

