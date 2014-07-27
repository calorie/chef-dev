#
# Cookbook Name:: coffee-script
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'npm'

npm_package 'coffee-script' do
  version node['coffee-script']['version']
  action  :install
end
