#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2012, Mike Gehard
#
# All rights reserved - Do Not Redistribute
#

user = 'vagrant'
destination_directory = "/home/#{user}/workspace/dotfiles"


directory destination_directory do
  mode '755'
  owner user
  group user
  action :create
  recursive true
end

git destination_directory do
  repository 'git://github.com/msgehard/dotfiles.git'
  reference 'master'
  action :sync
  user user
end

