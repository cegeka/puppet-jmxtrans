define jmxtrans::keyoutwriter ( $jmx_host, $jmx_port, $jmx_username='', $jmx_password='', $objtype, $attributes,
                                $outputfile, $maxlogfilesize, $maxlogbackupfiles, $debug=false) {

  file { "/var/lib/jmxtrans/keyout.${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('jmxtrans/output/keyoutwriter.erb');
  }

}
