#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'cmake'
include_recipe 'fontforge'
include_recipe 'git'
include_recipe 'lua'
include_recipe 'mercurial'
include_recipe 'rbenv::user'
include_recipe 'tmux'
include_recipe 'zsh'

user_name  = node['user']
user_group = node['group']
home       = ::File.join('/home', user_name)
dotfiles   = ::File.join(home, 'dotfiles')

git dotfiles do
  repository 'https://github.com/calorie/dotfiles.git'
  reference 'master'
  action :sync
  user user_name
  group user_group
end

setup = ::File.join(dotfiles, 'script', 'setup')
bash 'setup dotfiles' do
  cwd dotfiles
  code "echo y | #{setup}"
  creates ::File.join(home, '.zshrc')
  user user_name
  group user_group
end
