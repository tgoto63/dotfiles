# install HomeBrew
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install awesome apps
brew bundle --file=~/Workspace/github.com/tgoto63/dotfiles/brew/Brewfile

# agree with Xcode license
sudo xcodebuild -license accept
