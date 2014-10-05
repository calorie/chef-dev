default[:vagrant][:version] = '1.6.5'
default[:vagrant][:source]  = "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{node['vagrant']['version']}_x86_64.deb"
default[:vagrant][:plugins] = %w()
