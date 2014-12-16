class bind::params {
  case  $::osfamily {
    'debian': {
      $bind_service = 'bind9'
      $bind_package = 'bind9'
      $bind_owner = 'root'
      $bind_group = 'root'
      $bind_confdir = '/etc/bind'
      $bind_conf = 'named.conf'
    }
    'redhat': {
      $bind_service = 'named'
      $bind_package = 'bind'
      $bind_owner = 'root'
      $bind_group = 'root'
      $bind_confdir = '/etc/named'
      $bind_conf = 'named.conf'
    }
  }
}
