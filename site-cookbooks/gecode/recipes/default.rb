#
# Cookbook Name:: gecode
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ark'

ark 'gecode' do
  owner         node['user']
  url           node['gecode']['url']
  version       node['gecode']['version']
  autoconf_opts node['gecode']['autoconf_opts']
  action        :install_with_make
end
