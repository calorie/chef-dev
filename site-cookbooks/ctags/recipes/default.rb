#
# Cookbook Name:: ctags
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if platform?('debian', 'ubuntu')
  package 'exuberant-ctags' do
    action :install
  end
else
  package 'ctags' do
    action :install
  end
end
