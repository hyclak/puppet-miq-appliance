class cloudforms_appliance {
  file { '/tmp/miq_region':
    content => 'yes'
  }
}
