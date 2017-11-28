name 'linux-webserver-nginx'
maintainer 'The Authors'
maintainer_email 'you@example.com'
##chef_version 'all'
license 'GPL v3'
description 'Installs/Configures learn-chef nginx'
long_description 'Installs/Configures learn-chef nginx'
version '0.1.0'
supports 'ubuntu', '>= 14.04'
issues_url 'https://github.com/learn-chef/learn_chef_apache2/issues' if respond_to?(:issues_url)
source_url 'https://github.com/learn-chef/learn_chef_apache2' if respond_to?(:source_url)
depends 'linux-webserver', '>= 0.0.1'
