#
# Cookbook Name:: chsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user_name = node['user']

bash "Set vagrant's shell to zsh" do
  code <<-EOT
    chsh -s /bin/zsh #{user_name}
  EOT
end
