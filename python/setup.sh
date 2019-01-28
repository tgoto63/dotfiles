# fix zlib error.
# ref: https://qiita.com/zreactor/items/c3fd04417e0d61af0afe
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

# install pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

# install Python 3
pyenv install 3.7.2
pyenv global 3.7.2

# update pip
pip install --upgrade pip

# install libraries
pip install awscli
