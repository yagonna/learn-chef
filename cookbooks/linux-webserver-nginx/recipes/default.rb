#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'nginx'

service 'nginx' do
  supports status: true
  action [:enable, :start]
end

group 'web_admin' do
	gid '666'
end

user 'web_admin' do
  	uid '666'
	group 'web_admin'
	system true
	shell '/bin/bash'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
