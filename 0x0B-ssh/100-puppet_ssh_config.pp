#!/usr/bin/env bash
# using Puppet to make changes to our configuration file
file { 'etc/ssh/ssh_cofig':
	ensure => present,
content =>"
#SSH client configuration
host*
IdentityFile ~/.ssh/school
PasswordAuthentication no
",
}
