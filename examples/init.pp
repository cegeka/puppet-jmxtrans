include jmxtrans

jmxtrans::graphitewriter { 'dev.example.com':
  jmx_host      => '172.16.0.1',
  jmx_port      => '5446',
  objtype       => 'java.lang:type=Memory',
  attributes    => '"HeapMemoryUsage", "NonHeapMemoryUsage"',
  graphite_host => '127.0.0.1',
  graphite_port => '2003',
  typenames     => 'name',
}

jmxtrans::keyoutwriter { 'dev.example.com':
  jmx_host          => '172.16.0.1',
  jmx_port          => '5446',
  objtype           => 'java.lang:type=Memory',
  attributes        => '"HeapMemoryUsage", "NonHeapMemoryUsage"',
  outputfile        => '/tmp/jmxtrans-dev.example.com.log',
  maxlogfilesize    => '10M',
  maxlogbackupfiles => 200,
  debug             => true
}

jmxtrans::stdoutwriter { 'dev.example.com':
  jmx_host   => '172.16.0.1',
  jmx_port   => '5446',
  objtype    => 'java.lang:type=Memory',
  attributes => '"HeapMemoryUsage", "NonHeapMemoryUsage"'
}

