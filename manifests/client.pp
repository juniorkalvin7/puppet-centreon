class centreon::client {
  include centreon::packages

  # Host declaration
  @@centreon_host { $::hostname:
    ensure   => present,
    alias    => $::hostname,
    address  => $::ipaddress,
    template => 'generic-host',
  }

  # Check Services
  @@centreon_service { 
    "Disponibilidade-$::hostname":
    ensure      => $check_disponiblidade,
    hostname    => $::hostname,
    template    => 'Ping-LAN',
    description => 'ping';
  
    "SshUsers-$::hostname":
    ensure      => $check_sshusers,
    hostname    => $::hostname,
    template    => undef,
    description => Check-SSHUSERS,
    ;

    "SshPort-$::hostname":
    ensure      => $check_sshport;

    "Memory-$::hostname":
    ensure      => $check_memory;

    "Load-$::hostname":
    ensure      => $check_load;

    "Uptime-$::hostname":
    ensure      => $check_uptime
  }
  

}
