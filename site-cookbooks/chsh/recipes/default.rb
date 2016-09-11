#
# Cookbook Name:: chsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'zsh'

execute 'set zsh as default shell' do
  command "chsh -s /bin/zsh #{node['user']}"
end
