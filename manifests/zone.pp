define bind::zone (
  name => "",
  type => master,
  file => "${::bind::bind_confdir}/${name}",
){
  
  File {
    owner => $::bind::bind_owner,
    group => $::bind::bind_group,
  }
  file { "${::bind::bind_confdir}/${name}":
   content => template( 'bind/zone.erb' ),
   notify => Service [ "$::bind::bind_service" ],
  }
  concat::fragment { $name:
    target => $bind::config::namedfile,
    content => "zone \"${name}\" IN {
	type ${type};
	file \"${file}\";
};\n",
    order  => '10',
  }
}
