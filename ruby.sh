#!/bin/bash

sudo apt-get update

sudo apt-get install ruby ruby-dev make build-essential

echo "export GEM_HOME=$HOME/gems" >> ~/.bashrc
echo "path update 1 done " >&3

echo "export PATH=$HOME/gems/bin:$PATH" >> ~/.bashrc
echo "path update 2 done " >&3

source ~/.bashrc
echo "finish setup " >&3
