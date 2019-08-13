#!/bin/sh

echo "Setting up your Mac..."

HOMEBREW_PREFIX="/usr/local"

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
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update --force
brew tap homebrew/core
brew tap homebrew/bundle

brew bundle --file=- <<EOF
brew "readline"
brew "autoconf"
brew "pkg-config"
brew "makedepend"
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

./environments.sh

# Install the rest with bundle
brew bundle

# Make Zsh the default shell
chsh -s $(which zsh)

# Set macOS preferences
# source macOS

./post-install.sh
