#!/bin/bash
# file: wreddit.sh
apt-get update
apt-get install curl -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get update
apt-get install nodejs git screen -y
npm install yarn forever -g

git clone https://github.com/word-reddit/frontend.git 
git clone https://github.com/word-reddit/backend.git

cd backend
yarn
forever start index.js

cd ..
cd frontend
yarn
forever start index.js