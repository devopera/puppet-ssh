class ssh::client inherits ssh::params {
  package { 'openssh-client':
    name => $client_package_name,
    ensure => present,
  }
  
  file { '/etc/ssh/ssh_config':
    content => template('ssh/ssh_config.erb'),
    require => Package['openssh-client'],
  }
}
