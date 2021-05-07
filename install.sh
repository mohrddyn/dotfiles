#!/bin/sh

echo "Setting up your Mac..."

CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
  HOMEBREW_PREFIX="/opt/homebrew"
else
  HOMEBREW_PREFIX="/usr/local"
fi

if [ ! -d "$HOME/.bin" ]; then
  mkdir "$HOME/.bin"
fi

if [ -d "$HOMEBREW_PREFIX" ]; then
  if [ ! -w "$HOMEBREW_PREFIX" ]; then
    sudo chown -R "`whoami`:admin" "$HOMEBREW_PREFIX"
  fi
else
  sudo mkdir "$HOMEBREW_PREFIX"
  sudo chflags norestricted "$HOMEBREW_PREFIX"
  sudo chown -R "`whoami`:admin" "$HOMEBREW_PREFIX"
fi

DOTFILES_DIRS="`pwd `/dotfiles"
echo "DOTFILES_DIRS=\"$DOTFILES_DIRS\"" >$HOME/.rcrc

# Install homebrew if we do not have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew update --force
brew tap homebrew/core
brew tap homebrew/bundle
brew tap homebrew/services

brew bundle --file=- <<EOF
brew "readline"
brew "autoconf"
brew "pkg-config"
brew "openssl"
brew "ruby-build"
brew "rbenv"
brew "erlang", args: ["with-native-libs", "without-docs", "without-hipe"]
brew "elixir-build"
brew "exenv"
brew "node-build"
brew "nodenv", args: ["without-bash-extension"]
brew "jemalloc"
EOF

eval "$(/opt/homebrew/bin/brew shellenv)"

# Install the rest with bundle
brew bundle

# Make Zsh the default shell
# chsh -s $(which zsh)

# Set macOS preferences
# source macOS

# ./post-install.sh

rcup bin irbrc psqlrc iex.exs
rcup gemrc bundle rbenv chef gitconfig
rcup git_template gitattributes gitignore gitignore_global
rcup tmux tmux.conf vimrc vim zprofile zshenv
rcup agignore aws

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cp .zshrc .zshrc.post-oh-my-zsh
# rm .zshrc .zshrc.pre-oh-my-zsh
rcup zshrc oh-my-zsh

./environments.sh

# vim -c PlugInstall -c qall

# heroku plugins:install heroku-accounts
