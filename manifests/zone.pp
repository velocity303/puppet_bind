define bind::zone {
  File {
    owner => $::bind::bind_owner,
    group => $::bind::bind_group,
  }
  file { "${::bind::bind_confdir}/${name}":
   content => template( 'bind/zone.erb' ),
   notify => Service [ "$::bind::bind_service" ],
  }
}
