# set installed zsh
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

ln -fs ~/Workspace/github.com/tgoto63/dotfiles/zsh/.zshrc ~/.zshrc

source ~/.zshrc