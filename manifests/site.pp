node default {
  file {'/root/README':
    ensure => file,
    content => 'This is an iKeman readme',
    owner => 'root',
  }
}
