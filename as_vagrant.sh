#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
echo 'source /home/vagrant/.rvm/scripts/rvm' >> ~/.profile
source ~/.profile
rvm install "ruby-2.6.6"
rvm use "ruby-2.6.6" --default
gem install sqlite3
gem install pg
gem install bundler
gem install rails