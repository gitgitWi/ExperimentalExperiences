# Install Deno with asdf (see {https://asdf-vm.com})
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
# sh -c ". $HOME/.asdf/asdf.sh"

# Install Deno
asdf plugin add deno
DENO_LATEST=$(asdf latest deno)
asdf install deno $DENO_LATEST
asdf global deno $DENO_LATEST
echo "Deno installed! version: $(DENO_LATEST) "

# install Nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts
echo "Node installed!"
node -v

npm i -g npm yarn
npm -v
# yarn v1.x -> v3.x
yarn set version latest
yarn -v