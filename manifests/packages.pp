class centreon::packages {
  $centreonPackages = [
              'net-snmp',
              'git'
              ]

  package { $centreonPackages:
    ensure => installed,
  }
}