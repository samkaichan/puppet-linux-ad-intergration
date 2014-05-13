class ad_intergration::service {
  service { $ad_intergration::params::samba_service_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }
  service { $ad_intergration::params::winbind_service_name:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }
}
