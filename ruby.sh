#!/bin/bash

sudo apt-get update

sudo apt-get install ruby ruby-dev make build-essential

echo "export GEM_HOME=$HOME/gems" >> ~/.bashrc
echo "export PATH=$HOME/gems/bin:$PATH" >> ~/.bashrc

source ~/.bashrc

sudo gem install jekyll bunler
