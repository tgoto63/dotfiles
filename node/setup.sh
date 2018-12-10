# install nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
. $NVM_DIR/nvm.sh

# install Node.js
nvm install --lts
nvm use --lts
nvm alias default 'lts/*'

# update npm
npm i -g npm@latest

# install libraries
npm i -g yarn