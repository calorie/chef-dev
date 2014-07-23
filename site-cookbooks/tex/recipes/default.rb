#
# Cookbook Name:: tex
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['tex']['packages'].each do |pkg|
  package pkg
end
