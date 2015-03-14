#
# Cookbook Name:: dmenu
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tar   = ::File.basename(node['dmenu']['url'])
diff  = ::File.basename(node['dmenu']['patch'])
src   = ::File.join(Chef::Config[:file_cache_path], ::File.basename(node['dmenu']['url'], '.tar.gz'))
dmenu = ::File.join('/usr', 'local', 'bin', 'dmenu_run')

%w{
  libxft-dev
  libxft2
  libxinerama-dev
}.each { |pkg| package pkg }

# remote_file ::File.join(Chef::Config[:file_cache_path], tar) do
#   source node['dmenu']['url']
#   not_if { ::File.exist?(dmenu) }
# end
bash 'download src' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    wget #{node['dmenu']['url']}
  EOH
  not_if { ::File.exist?(dmenu) }
end

bash 'extract module' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar xzf #{tar}
  EOH
  not_if { ::File.exist?(dmenu) }
end

# remote_file ::File.join(src, diff) do
#   source node['dmenu']['patch']
#   not_if { ::File.exist?(dmenu) }
# end
bash 'download patch' do
  cwd src
  code <<-EOH
    wget #{node['dmenu']['patch']}
  EOH
  not_if { ::File.exist?(dmenu) }
end

config_mk = ::File.join(src, 'config.mk')
bash 'patch' do
  cwd src
  code <<-EOH
    patch -p1 < #{diff}
    sed -i -e 's|/usr/local/include/freetype2|/usr/include/freetype2|g' #{config_mk}
  EOH
  not_if { ::File.exist?(dmenu) }
end

bash 'make install' do
  cwd src
  code <<-EOH
    make
    make install
  EOH
  not_if { ::File.exist?(dmenu) }
end
