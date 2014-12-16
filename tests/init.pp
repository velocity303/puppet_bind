include bind
bind::view { 'internal':
  view_zone_name    => "velocitynet.me",
  view_zone_type    => "master",
  view_zone_file    => "external.velocitynet.me",
  global_zone_name  => "1.168.192.in-addr.arpa",
  global_zone_type  => "master",
  global_zone_file  => "1.168.192.in-addr.arpa",
  match_clients     => "!192.168.1.0/24; !localnets; any;", 
}
