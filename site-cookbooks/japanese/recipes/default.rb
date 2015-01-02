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
}.each { |pkg| package pkg }

execute 'dpkg-reconfigure locales'
