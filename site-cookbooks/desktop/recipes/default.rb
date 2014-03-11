#
# Cookbook Name:: desktop
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user = node['user']

if user == 'vagrant'
  package 'ubuntu-desktop' do
    action :install
  end
end
