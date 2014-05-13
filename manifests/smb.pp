define ad_intergration::smb( $workgroup, $template='ad_intergration/smb.conf.erb' ) {
  include ad_intergration

  file {"/etc/samba/smb.conf":
    ensure => present,
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => 0644,
    require => Class["ad_intergration::install"],
    notify => Class["ad_intergration::service"],
  }
}
