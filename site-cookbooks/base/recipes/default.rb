#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform'] == 'linuxmint'
  node.automatic_attrs['platform'] = 'ubuntu'
  node.automatic_attrs['platform_version'] = '13.10'
end

user_name  = node['user']
user_group = node['group']

directory "/home/#{user_name}/work" do
  owner user_name
  group user_group
  action :create
end
