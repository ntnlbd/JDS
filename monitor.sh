#!/bin/bash

#Install TMUX session manager

sudo apt-get update

sudo apt-get install tmux

tmux -V

#Install node.js and npm

sudo apt install curl

curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

sudo apt install nodejs

node -v

npm -v

#Install VTOP hardware monitor https://github.com/MrRio/vtop

sudo npm install -g vtop

#Create a new tmux session called Monitor split vertically 50%

# tmux new -s monitor 'vtop'
# tmux new -s jekyll

tmux new -s monitor 'vtop'

read -p 'Enter server IP: ' serveripvar
tmux new -s jekyll 'bundle exec jekyll serve --host='$serveripvar''
