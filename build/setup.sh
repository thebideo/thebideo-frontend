#!/bin/bash
# export PATH=$PATH:~/bin
echo $PATH
export GEM_HOME=/var/lib/jenkins/.gem/ruby
# Script to setup our environment
gem list
if !(`gem list bundler -i`); then
    gem install bundler
fi

pushd ..
bundle install
popd