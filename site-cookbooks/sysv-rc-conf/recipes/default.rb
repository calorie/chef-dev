#
# Cookbook Name:: sysv-rc-conf
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'sysv-rc-conf'

execute "services off" do
  command "sysv-rc-conf #{node['sysv-rc-conf']['off'].join(' off ')} off"
end
