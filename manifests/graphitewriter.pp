define jmxtrans::graphitewriter ($jmx_host, $jmx_port, $objtype, $attributes, $graphite_host, $graphite_port, $typenames, $jmx_username='', $jmx_password='') {

  include jmxtrans

  file { "/var/lib/jmxtrans/graphite.${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('jmxtrans/output/graphitewriter.erb'),
    require => Package['jmxtrans']
  }

}
