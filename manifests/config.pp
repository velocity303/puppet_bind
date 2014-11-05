class bind::config {
  $namedfile = "${::bind::bind_confdir}/${::bind::bind_conf}"
  concat { $namedfile:
    ensure => file,
    owner  => $::bind::bind_owner,
    group  => $::bind::bind_group,
  }
  concat::fragment { 'named.conf_header':
    target => $namedfile,
    source => "puppet:///modules/bind/${::bind::bind_conf}",
    order  => '01',
  }
}
