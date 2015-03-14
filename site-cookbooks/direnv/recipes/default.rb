#
# Cookbook Name:: direnv
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

direnv = ::File.join('/usr', 'local', 'bin', 'direnv')

remote_file direnv do
  source node['direnv']['url']
  mode   '0755'
  not_if { ::File.exist?(direnv) }
end
