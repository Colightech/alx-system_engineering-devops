#!/usr/bin/env bash
# . Client configuration file with Puppet

file {'/etc/ssh/ssh_fonfig':
	ensure => present,
}

file_line {'Turn of password auth'
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthentication',
	match => '^#PasswordAuthentication',
}

file_line {'Declare identity file':
	path => '/etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school',
	match => '^#IdentityFile',
}
