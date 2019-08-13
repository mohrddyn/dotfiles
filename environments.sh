#!/bin/sh

# Ruby installation
/bin/echo -n "Ruby version to install? "
read ruby

if test -n "${ruby}"; then
  RUBY_CONFIGURE_OPTS="--with-jemalloc" rbenv install "$ruby"
  rbenv global "${ruby}"
  rbenv rehash

  /bin/echo -n "Rails version to install? "
  read rails

  if test -n "${rails}"; then
    "${HOME}/.rbenv/versions/${ruby}/bin/gem" install rails --version "$version" --no-ri --no-rdoc
  fi
fi

/bin/echo -n "Elixir version to install? "
read elixir

if test -n "${elixir}"; then
  exenv install "$elixir"
  exenv global "${elixir}"
  exenv rehash
fi

/bin/echo -n "Node version to install? "
read node

if test -n "${node}"; then
  nodenv install "$node"
  nodenv global "${node}"
  nodenv rehash
fi
