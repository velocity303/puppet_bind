class bind(
  $bind_package = $::bind::params::bind_package,
  $bind_service = $::bind::params::bind_service,
  $bind_owner = $::bind::params::bind_owner,
  $bind_group = $::bind::params::bind_group,
  $bind_confdir = $::bind::params::bind_confdir,
  $bind_conf = $::bind::params::bind_conf,
) inherits bind::params {
  include bind::install
  include bind::service
  include bind::config
}
