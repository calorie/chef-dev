#
# Cookbook Name:: japanese
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
  language-pack-ja
  ibus-mozc
}.each do |pkg|
  execute pkg do
    command "aptitude install -y #{pkg}"
  end
end

bash 'japanese' do
  code <<-EOH
  sudo dpkg-reconfigure locales
  EOH
end
