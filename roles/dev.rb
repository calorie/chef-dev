recipes = %w{
  apt
  sudo
  base
  sysv-rc-conf
  locale
  ubuntu-change-source-list
  japanese
  build-essential
  readline
  curl
  ag
  apparmor
  git
  tig
  mercurial
  zsh
  chsh
  tmux
  vim
  ctags
  cmake
  fontforge
  rbenv::user
  python
  lua
  nodejs
  coffee-script
  golang
  docker
  peco
  direnv
  google-chrome
  trash-cli
  dropbox
  vagrant
  xsel
  dmenu
  vvm-rb
  dotfiles
}.map { |r| "recipe[#{r}]" }

name 'dev'
description 'development'
run_list(*recipes)
