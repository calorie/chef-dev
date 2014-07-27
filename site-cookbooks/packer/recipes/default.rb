#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

zip = ::File.basename(node['packer']['url'])
src = ::File.join(Chef::Config[:file_cache_path], ::File.basename(node['packer']['url'], '.zip'))
packer = ::File.join('/usr', 'local', 'bin', 'packer')

remote_file ::File.join(Chef::Config[:file_cache_path], zip) do
  source node['packer']['url']
  not_if { ::File.exists?(packer) }
end

bash 'extract_module' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    unzip #{zip} -d #{src}
    mv #{::File.join(src, 'packer*')} /usr/local/bin/
  EOH
  not_if { ::File.exists?(packer) }
end
