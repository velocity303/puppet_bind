class bind::service {
  service { $::bind::bind_service :
    ensure => running,
    enable => true,
  }
}
