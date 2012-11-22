define jmxtrans::stdoutwriter ($jmx_host, $jmx_port, $objtype, $attributes, $jmx_username='', $jmx_password='') {

  include jmxtrans

  file { "/var/lib/jmxtrans/stdout.${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('jmxtrans/output/stdoutwriter.erb'),
    require => Package['jmxtrans'],
  }

}
