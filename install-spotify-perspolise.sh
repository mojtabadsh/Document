#!/bin/bash

echo "Install spotify \n"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

echo "Install Perspolise \n"
sudo add-apt-repository ppa:persepolis/ppa
sudo apt update
sudo apt install persepolis

