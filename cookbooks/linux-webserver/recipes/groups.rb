#
# Cookbook Name:: apache2
# Recipe:: groups
#
group 'web_admin' do
	gid '666'
end

group 'wwwadmin' do
	gid '667'
end
