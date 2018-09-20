#!/bin/bash
# export PATH=$PATH:~/bin
export GEM_HOME=~/.gem/ruby
# Script to setup our environment
gem list
if !(`gem list bundler -i`); then
    gem install bundler
fi

pushd ..
bundle install
popd