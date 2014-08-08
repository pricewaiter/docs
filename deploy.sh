#!/bin/bash
#
# Script for jenkins to run to build jekyll & cap deploy

bundle install --path vendor/bundle --deployment

bundle exec jekyll build

bundle exec cap deploy 
