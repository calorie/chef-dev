#
# Cookbook Name:: chsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user_name = node['chsh']['user']

execute "set zsh as default shell" do
  command "chsh -s /bin/zsh #{user_name}"
end
