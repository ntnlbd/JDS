#!/bin/bash

#Install Jekyll and bundler

sudo gem install jekyll bundler

jekyll -v

bundler -v

#Create new jekyll project
read -p 'Current user: ' uservarvar
read -p 'New Jekyll project name: ' projectvar


jekyll new ../$projectvar

#Add basicly basic theme and admin plugin

cd ../$projectvar

git init

git remote add origin https://github.com/mmistakes/jekyll-theme-basically-basic.git

git fetch --all

git reset --hard origin/master

rm -rf .git

cp -fr home/$uservar/JDS/_config.yml home/$uservar/$projectvar

cp -fr home/$uservar/JDS/Gemfile home/$uservar/$projectvar

cd home/$uservar/$projectvar

bundle install

#Cleanup

rm .editorconfig .gitattributes .scss-lint.yml CHANGELOG.md jekyll-theme-basically-basic.gemspec LICENSE Rakefile README.md screenshot.png

rm -rf .github docs example
