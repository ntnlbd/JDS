#!/bin/bash

#Install Jekyll and bundler

sudo gem install jekyll bundler

jekyll -v

bundler -v

#Create new jekyll project

read -p 'Username: ' uservar
read -p 'Project name: ' projectvar

jekyll new ../$projectvar

#Add basicly basic theme and admin plugin

cd ../$projectvar

git init

git remote add origin https://github.com/mmistakes/jekyll-theme-basically-basic.git

git fetch --all

git reset --hard origin/master

rm -rf .git

cp -fr ~/Github/JDS/_config.yml home/%USERNAME%/$projectvar

cp -fr ~/Github/JDS/Gemfile home/%USERNAME%/$projectvar

cd home/%USERNAME%cd J/$projectvar

bundle install

#Cleanup

rm .editorconfig .gitattributes .scss-lint.yml CHANGELOG.md jekyll-theme-basically-basic.gemspec LICENSE Rakefile README.md screenshot.png

rm -rf .github docs example
