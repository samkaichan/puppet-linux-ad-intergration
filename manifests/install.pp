class ad_intergration::install {
  package { $ad_intergration::params::software_deps :
    ensure => installed,
  }
}
