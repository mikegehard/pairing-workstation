#
# Cookbook Name:: rvm_prereq
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "libyaml-dev" do
  action :install
end
package "libsqlite3-dev" do
  action :install
end
package "sqlite3" do
  action :install
end
package "libxml2-dev" do
  action :install
end
package "libxslt-dev" do
  action :install
end
package "ncurses-dev" do
  action :install
end
package "libtool" do
  action :install
end
