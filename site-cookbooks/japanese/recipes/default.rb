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
  locales
}.each { |pkg| package pkg }

execute 'locales' do
  command <<-SHELL
locale-gen ja_JP.UTF-8
update-locale LANG=ja_JP.UTF-8
SHELL
  action :run
end
