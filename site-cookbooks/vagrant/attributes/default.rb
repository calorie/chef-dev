default[:vagrant][:version] = '1.8.5'
default[:vagrant][:source]  = "https://releases.hashicorp.com/vagrant/#{node['vagrant']['version']}/vagrant_#{node['vagrant']['version']}_x86_64.deb"
default[:vagrant][:plugins] = %w()
