class ad_intergration::config {
  File {
    owner => "root",
    group => "root",
    mode => 0644,
  }

  file { $ad_intergration::params::nsswitch_config:
    ensure => present,
    source => "puppet:///modules/ad_intergration/etc/nsswitch.conf",
  }

  file { $ad_intergration::params::sshd_pam_config:
    ensure => present,
    source => "puppet:///modules/ad_intergration/etc/pam.d/sshd",
  }

  file { $ad_intergration::params::system_pam_config:
    ensure => present,
    source => "puppet:///modules/ad_intergration/etc/pam.d/system-auth-ac",
  }
}
