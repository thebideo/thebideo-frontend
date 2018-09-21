#!/bin/bash
export PATH=$PATH:~/bin

# Script to setup our environment
if !(`gem list bundler -i`); then
    gem install bundler
fi

pushd ..
bundle install
pushd assets
cp -r /usr/share/nginx/thebideo/mp3 assets/
popd 
popd