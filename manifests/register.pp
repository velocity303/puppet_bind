define bind::register( $content="", $order='10') {
  concat::fragment { "named.conf_fragment_${name}":
    target  => $::bind::config::$namedfile,
    order   => $order,
    content => $content 
  }
}
