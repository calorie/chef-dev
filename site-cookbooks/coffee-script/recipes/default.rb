#
# Cookbook Name:: coffee-script
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nodejs'

nodejs_npm 'coffee-script' do
  version node['coffee-script']['version']
end
