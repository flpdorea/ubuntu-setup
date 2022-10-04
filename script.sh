#!/usr/bin/bash

echo "Starting Ubuntu setup. Please wait..."

sudo apt-get update

apt-get install curl

apt-get install git

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - \ && sudo apt-get install -y nodejs

sudo apt install google-chrome-stable

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
