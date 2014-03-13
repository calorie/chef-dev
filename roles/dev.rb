name 'dev'
description 'development'
run_list(
  'recipe[apt]',
  'recipe[sudo]',
  'recipe[japanese]',
  'recipe[build-essential]',
  'recipe[readline]',
  'recipe[curl]',
  'recipe[git]',
  'recipe[mercurial]',
  'recipe[zsh]',
  'recipe[chsh]',
  'recipe[tmux]',
  'recipe[vim]',
  'recipe[ctags]',
  'recipe[cmake]',
  'recipe[fontforge]',
  'recipe[ruby_build]',
  'recipe[rbenv::user]',
  'recipe[python]',
  'recipe[lua]',
  'recipe[google-chrome]',
  'recipe[dotfiles]',
  'recipe[desktop]'
)
