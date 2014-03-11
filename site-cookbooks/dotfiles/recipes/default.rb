#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user = node['user']
dotfiles = "/home/#{user}/dotfiles"

git dotfiles do
  repository 'https://github.com/calorie/dotfiles.git'
  reference 'master'
  action :sync
  user user
  group user
end

bash 'setup dotfiles' do
  cwd dotfiles
  code <<-EOH
    echo y|#{dotfiles}/script/setup
  EOH
  not_if { ::File.exists?("/home/#{user}/.vimrc") }
  user user
  group user
end
