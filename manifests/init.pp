# Class: jmxtrans
#
# This module manages jmxtrans
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class jmxtrans {

  package { 'jmxtrans':
    ensure => present
  }

  service { 'jmxtrans':
    ensure    => running,
    hasstatus => true,
    enable    => true
  }

}
