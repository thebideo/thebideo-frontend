#!/bin/bash

# Script to setup our environment
gem list
if !(`gem list bundler -i`); then
    gem install bundler
fi

pushd ..
bundle install
popd