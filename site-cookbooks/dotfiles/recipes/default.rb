#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dotfiles = '/home/yuu/dotfiles'

git dotfiles do
  repository 'https://github.com/calorie/dotfiles.git'
  reference 'master'
  action :sync
end

bash 'setup dotfiles' do
  cwd dotfiles
  code <<-EOH
    echo y|#{dotfiles}/script/setup
  EOH
end
