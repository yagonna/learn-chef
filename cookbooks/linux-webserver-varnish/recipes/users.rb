#
# Cookbook Name:: apache2
# Recipe:: users
#
user 'web_admin' do
  	uid '666'
	group 'web_admin'
	system true
	shell '/bin/bash'
end

user 'wwwadmin' do
  	uid '667'
	group 'wwwadmin'
	system true
	shell '/bin/bash'
end
