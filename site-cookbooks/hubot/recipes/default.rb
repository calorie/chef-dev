#
# Cookbook Name:: hubot
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'npm'

npm_package 'hubot' do
  version node['hubot']['version']
  action  :install
end
