#!/bin/bash

sudo apt-get update

sudo apt-get install ruby ruby-dev make build-essential

echo "export GEM_HOME=$HOME/gems" >> ~/.bashrc
echo "path update 1 done"

echo "export PATH=$HOME/gems/bin:$PATH" >> ~/.bashrc
echo "path update 2 done"

source ~/.bashrc
echo "finish setup"
