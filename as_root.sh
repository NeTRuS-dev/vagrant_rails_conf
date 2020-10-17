#!/bin/bash
sudo apt update
sudo apt -y install vim
sudo apt -y install curl
sudo apt -y install git
sudo apt -y install sqlite3
sudo apt -y install postgresql-client postgresql libpq-dev
sudo apt upgrade -y
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt -y install nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y