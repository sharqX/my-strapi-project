#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
npm install pm2 -g
node -e "console.log('Running Node.js ' + process.version)"
cd my-strapi-project/
npm install
pm2 start server.js
pm2 save && pm2 startup
