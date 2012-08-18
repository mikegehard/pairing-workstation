#
# Cookbook Name:: wemux
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user = node['current_user']
destination_directory = "/home/#{user}/wemux"


git destination_directory do
  repository 'git://github.com/zolrath/wemux.git'
  reference 'master'
  user user
end

link "/usr/local/bin/wemux" do
  to "#{destination_directory}/wemux"
end

template "/usr/local/etc/wemux.conf" do
  source "wemux.conf.erb"
  mode '0755'
end
