# set installed zsh
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# set up oh-my-zsh
export ZSH="~/Workspace/github.com/tgoto63/dotfiles/oh-my-zsh";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# create hard-link to .zshrc
ln -fs ~/Workspace/github.com/tgoto63/dotfiles/zsh/.zshrc ~/.zshrc

# install power-line-fonts
git clone https://github.com/powerline/fonts.git --depth=1
sh ./fonts/install.sh
rm -rf fonts

source ~/.zshrc