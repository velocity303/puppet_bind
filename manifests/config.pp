class bind::config {
  file {"${::bind::bind_confdir}/${::bind::bind_conf}":
    ensure => file,
    owner  => $::bind::bind_owner,
    group  => $::bind::bind_group,
    source => "puppet:///modules/bind/${::bind::bind_conf}",
    notify => Service[ $::bind::bind_service ],
  }
}
