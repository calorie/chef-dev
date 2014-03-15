#
# Cookbook Name:: lua
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

pkgs = %w{
  lua5.2
  liblua5.2-dev
  luarocks
}

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
