class bind::install {
  package { $::bind::bind_package :
   ensure => present,
  }
}
