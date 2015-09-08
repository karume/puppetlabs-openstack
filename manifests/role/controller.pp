class openstack::role::controller inherits ::openstack::role {
  class { '::openstack::profile::firewall': }
  class { '::openstack::profile::rabbitmq': } ->
  class { '::openstack::profile::mysql': } ->
  class { '::openstack::profile::keystone': } ->
  class { '::openstack::profile::swift::proxy': } ->
  class { '::openstack::profile::ceilometer::api': } ->
  class { '::openstack::profile::neutron::server':} ->
  class { '::openstack::profile::neutron::router':} ->
  class { '::openstack::profile::glance::api': } ->
  class { '::openstack::profile::glance::auth': } ->
  class { '::openstack::profile::cinder::api': } ->
  class { '::openstack::profile::cinder::volume': } ->
  class { '::openstack::profile::nova::api': } ->
  class { '::openstack::profile::horizon': }
  class { '::openstack::profile::auth_file': }
  class { '::openstack::setup::sharednetwork': }
  class { '::openstack::setup::cirros': }

  Class['::openstack::setup::sharednetwork'] -> Class['::openstack::profile::neutron::server']
  Class['::openstack::setup::sharednetwork'] -> Class['::apache::service']

}
