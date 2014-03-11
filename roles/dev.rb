name 'dev'
description 'development'
run_list(
  'recipe[apt]',
  'recipe[japanese]',
  'recipe[timezone]',
  'recipe[build-essential]',
  'recipe[openssl]',
  'recipe[readline]',
  'recipe[curl]',
  'recipe[git]',
  'recipe[mercurial]',
  'recipe[zsh]',
  'recipe[tmux]',
  'recipe[vim]',
  'recipe[ctags]',
  'recipe[cmake]',
  'recipe[fontforge]',
  'recipe[ruby_build]',
  'recipe[rbenv::system]',
  'recipe[python]',
  'recipe[lua]',
  'recipe[google-chrome]',
  'recipe[dotfiles]'
)
