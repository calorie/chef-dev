#
# Cookbook Name:: hubot
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nodejs'

nodejs_npm 'hubot' do
  version node['hubot']['version']
end
