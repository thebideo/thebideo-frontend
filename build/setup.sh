#!/bin/bash

# Script to setup our environment

if !(`gem list bundler -i`); then
    gem install bundler
fi

cd ..
bundle install