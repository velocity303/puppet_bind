define bind::view(
  $view_zone_name    = undef,
  $view_zone_type    = undef,
  $view_zone_file    = undef,
  $global_zone_name  = undef,
  $global_zone_type  = undef,
  $global_zone_file  = undef,
  $match_clients     = undef,
) {
  concat::fragment { $name :
    target => $bind::config::namedfile,
    content => "view \"${name}\" {
    match-clients {${match_clients}};
    /* View specific zones */
    zone \"${view_zone_name}\" IN {
	type ${view_zone_type};
	file \"${::bind::params::bind_confdir}/${view_zone_file}\";
    };\n
    /* Global Zones */
    zone \"${global_zone_name}\" IN {
	type ${global_zone_type};
	file \"${::bind::params::bind_confdir}/${global_zone_file}\";
    };
};\n",
    order  => '5',
  }
}
