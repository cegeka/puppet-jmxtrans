define jmxtrans::keyoutwriter ( $jmx_host, $jmx_port, $objtype, $attributes,
                                $outputfile, $maxlogfilesize, $maxlogbackupfiles, $jmx_username='', $jmx_password='') {

  include jmxtrans

  file { "/var/lib/jmxtrans/keyout.${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('jmxtrans/output/keyoutwriter.erb'),
    require => Package['jmxtrans']
  }

}
