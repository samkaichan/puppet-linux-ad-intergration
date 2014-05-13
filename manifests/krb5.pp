define ad_intergration::krb5( $kdc, $template='ad_intergration/krb5.conf.erb' ) {
  include ad_intergration

  file {"/etc/krb5.conf":
    ensure => present,
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => 0644,
    require => Class["ad_intergration::install"],
    notify => Class["ad_intergration::service"],
  }
}
