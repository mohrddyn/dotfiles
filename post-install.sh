#!/bin/sh

rcup irbrc psqlrc
rcup gemrc gitconfig gitconfig_global
rcup tmux tmux.conf vim zlogin

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm .zshrc .zshrc.pre-oh-my-zsh

rcup zshrc oh-my-zsh

vim -c PlugInstall -c qall

heroku plugins:install heroku-accounts

brew uninstall --force --ignore-dependencies automake
brew uninstall --force --ignore-dependencies cmake
brew uninstall --force --ignore-dependencies doxygen
brew uninstall --force --ignore-dependencies go
brew uninstall --force --ignore-dependencies "lua@5.1"
brew uninstall --force --ignore-dependencies luarocks
brew uninstall --force --ignore-dependencies node
brew uninstall --force --ignore-dependencies "python@2"
brew uninstall --force --ignore-dependencies ruby
brew uninstall --force --ignore-dependencies sphinx-doc
