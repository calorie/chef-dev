#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user_name  = node['user']
user_group = node['group']
dotfiles   = "/home/#{user_name}/dotfiles"

git dotfiles do
  repository 'https://github.com/calorie/dotfiles.git'
  reference 'master'
  action :sync
  user user_name
  group user_group
end

bash 'setup dotfiles' do
  cwd dotfiles
  code <<-EOH
    echo y | #{dotfiles}/script/setup
  EOH
  creates "/home/#{user_name}/.zshrc"
  user user_name
  group user_group
end
