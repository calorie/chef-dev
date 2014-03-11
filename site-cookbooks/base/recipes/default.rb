#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

packages = %w(libssl-dev)

packages.each do |pkg|
  package pkg do
    action :install
  end
end
