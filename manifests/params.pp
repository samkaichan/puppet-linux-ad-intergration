class ad_intergration::params {
  case $operatingsystem {
    CentOS: {
      $software_deps = [ "samba", "samba-client", "samba-common", "samba-winbind" ]
      $krb5_config = '/etc/krb5.conf'
      $nsswitch_config = '/etc/nsswitch.conf'
      $smb_config = '/etc/samba/smb.conf'
      $sshd_pam_config = '/etc/pam.d/sshd'
      $system_pam_config = '/etc/pam.d/system-auth-ac'
      $samba_service_name = 'smb'
      $winbind_service_name = 'winbind'
    }
  }
}
