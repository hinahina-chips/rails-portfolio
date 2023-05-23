#!/bin/bash

if [ -f Gemfile ] ; then
  bundle install
else
  rails new . --force \
              --database=postgresql \
              --skip-git --css=tailwind \
              --skip-jbuilder \
              --skip-action-mailer \
              --skip-test \
              --skip-active-storage \
              --skip-action-text
fi
bin/setup
bin/dev
