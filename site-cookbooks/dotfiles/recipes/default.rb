#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user_name = node['dotfiles']['user']
dotfiles = "/home/#{user_name}/dotfiles"

git dotfiles do
  repository 'https://github.com/calorie/dotfiles.git'
  reference 'master'
  action :sync
  user user_name
  group user_name
end

bash 'setup dotfiles' do
  cwd dotfiles
  code <<-EOH
    echo y|#{dotfiles}/script/setup
  EOH
  not_if { ::File.exists?("/home/#{user_name}/.vimrc") }
  user user_name
  group user_name
end
