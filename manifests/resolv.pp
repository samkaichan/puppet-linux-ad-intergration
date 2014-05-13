define ad_intergration::resolv( $search, $ns1, $ns2, $template='ad_intergration/resolv.conf.erb' ) {
  include ad_intergration

  file {"/etc/resolv.conf":
    ensure => present,
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => 0644,
  }
}
