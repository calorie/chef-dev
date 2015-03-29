#
# Cookbook Name:: vvm-rb
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rbenv::user'

version = node['vvm-rb']['version']
opts    = node['vvm-rb']['opts'].join(' ')

Array(node['rbenv']['user_installs']).each do |rbenv_user|
  next unless rbenv_user['gems'][rbenv_user['global']].map { |h| h['name'] }.include?('vvm-rb')
  home = ::File.join(node['rbenv']['user_home_root'], rbenv_user['user'])
  rbenv_script "vvm-rb install #{version}" do
    rbenv_version rbenv_user['global']
    user          rbenv_user['user']
    group         rbenv_user['group']
    cwd           home
    code          "vvm install -u #{version} #{opts}"
    not_if        { File.exist?(File.join(home, '.vvm-rb')) }
  end
end
