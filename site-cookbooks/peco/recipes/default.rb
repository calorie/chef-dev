#
# Cookbook Name:: peco
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tar = ::File.basename(node['peco']['url'])
src = ::File.join(Chef::Config[:file_cache_path], ::File.basename(node['peco']['url'], '.tar.gz'))
peco = ::File.join('/usr', 'local', 'bin', 'peco')

remote_file ::File.join(Chef::Config[:file_cache_path], tar) do
  source node['peco']['url']
  not_if { ::File.exists?(peco) }
end

bash 'extract_module' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar xzf #{tar}
    mv #{::File.join(src, 'peco')} /usr/local/bin/
  EOH
  not_if { ::File.exists?(peco) }
end
