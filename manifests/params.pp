class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
      $client_package_name = 'openssh-client'
    }
    'RedHat': {
      $service_name = 'sshd'
      $client_package_name = 'openssh'
    }
    default: {
      fail("Unsupported osfamily $::osfamily, currently only supports Debian and RedHat")
    }
  }
}
