name 'openstack-common'
maintainer 'openstack-chef'
maintainer_email 'openstack-dev@lists.openstack.org'
license 'Apache 2.0'
description 'Common OpenStack attributes, libraries and recipes.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '12.0.1'

recipe 'openstack-common', 'Installs/Configures common recipes'
recipe 'openstack-common::set_endpoints_by_interface', 'Set endpoints by interface'
recipe 'openstack-common::logging', 'Installs/Configures common logging'
recipe 'openstack-common::sysctl', 'Configures sysctl settings'
recipe 'openstack-common::openrc', 'Creates openrc file'

%w(ubuntu suse redhat centos).each do |os|
  supports os
end

depends 'apt', '~> 2.8'
depends 'database', '~> 4.0.2'
depends 'mariadb', '~> 0.3.1'
depends 'mysql', '~> 6.0.13'
depends 'yum', '>= 0.0.0'
depends 'yum-epel', '>= 0.6.0'
depends 'galera', '~> 0.4.1'
