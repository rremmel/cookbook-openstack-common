name 'openstack-common'
maintainer 'openstack-chef'
maintainer_email 'openstack-dev@lists.openstack.org'
license 'Apache 2.0'
description 'Common OpenStack attributes, libraries and recipes.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '13.0.0'

recipe 'openstack-common', 'Installs/Configures common recipes'
recipe 'openstack-common::logging', 'Installs/Configures common logging'
recipe 'openstack-common::sysctl', 'Configures sysctl settings'

%w(ubuntu redhat centos).each do |os|
  supports os
end

depends 'apt', '~> 2.8'
depends 'database', '~> 5.1.0'
depends 'mariadb', '~> 0.3.1'
depends 'mysql', '~> 6.0.13'
depends 'yum', '~> 3.5.4'
depends 'yum-epel', '~> 0.6.0'
depends 'galera', '~> 0.4.1'
