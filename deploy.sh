#!/bin/bash
#
# Script for jenkins to run to build jekyll & cap deploy

bundle

bundle exec jekyll build

bundle exec cap deploy 
