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
npm i -g yarn \
         typescript \
         serverless \
         @angular/cli \
         create-react-app \
         http-server \
         npm-check-updates \
         lighthouse
npm ls -g --depth=0