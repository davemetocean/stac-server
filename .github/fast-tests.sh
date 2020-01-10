#!/bin/sh
echo "Running test 📝"
apt-get update
apt-get install sudo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update
# sudo apt install yarn -y
sudo apt install npm -y
# yarn --version
# yarn run test
npm run test
