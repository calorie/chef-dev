#
# Cookbook Name:: mercurial
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'python'

python_pip 'mercurial' do
  action :upgrade
end
