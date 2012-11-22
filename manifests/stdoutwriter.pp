define jmxtrans::stdoutwriter ($jmx_host, $jmx_port, $jmx_username='', $jmx_password='', $objtype, $attributes) {

  include jmxtrans

  file { "/var/lib/jmxtrans/stdout.${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('jmxtrans/output/stdoutwriter.erb');
  }

}
