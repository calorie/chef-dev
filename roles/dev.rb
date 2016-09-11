recipes = %w{
  ag
  apparmor
  apt
  base
  build-essential
  chsh
  cmake
  coffee-script
  ctags
  curl
  direnv
  dmenu
  docker
  dotfiles
  dropbox
  fontforge
  git
  golang
  google-chrome
  japanese
  locale
  lua
  mercurial
  mysql
  nodejs
  peco
  perl
  python
  rbenv::user
  readline
  sudo
  sysv-rc-conf
  tig
  tmux
  trash-cli
  ubuntu-change-source-list
  vagrant
  vim
  vvm-rb
  xsel
  zsh
}.map { |r| "recipe[#{r}]" }

name 'dev'
description 'development'
run_list(*recipes)
