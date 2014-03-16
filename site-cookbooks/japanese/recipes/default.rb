#
# Cookbook Name:: japanese
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

pkgs = %w{
  language-pack-ja
  ibus-mozc
}

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

bash 'japanese' do
  code <<-EOH
  sudo dpkg-reconfigure locales
  EOH
end
