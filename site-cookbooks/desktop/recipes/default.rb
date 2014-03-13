#
# Cookbook Name:: desktop
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user_name = node['user']

if user_name == 'vagrant'
  package 'ubuntu-desktop' do
    action :install
  end
end
