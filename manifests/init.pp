class cloudforms_appliance {
  file { '/tmp/miq_region':
    contents => 'yes'
  }
}
