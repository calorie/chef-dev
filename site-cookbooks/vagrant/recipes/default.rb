#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

vagrant_version = node[:vagrant][:version]
vagrant_source  = node[:vagrant][:source]
vagrant_plugins = node[:vagrant][:plugins]
vagrant_path    = "#{Chef::Config[:file_cache_path]}/vagrant_#{vagrant_version}_x86_64.deb"

remote_file vagrant_path do
  source vagrant_source
end

bash 'install-vagrant' do
  code   "dpkg -i #{vagrant_path}"
  not_if "dpkg -s vagrant | grep -q '#{vagrant_version}'"
end

vagrant_plugins.each do |plugin|
  bash "install-#{plugin}" do
    code "vagrant plugin install #{plugin}"
    user node.user
    environment 'VAGRANT_HOME' => "/home/#{node.user}/.vagrant.d"
    not_if "sudo su -l #{node.user} -- vagrant plugin list | grep -q #{plugin}"
  end
end
