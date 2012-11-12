class git {

  anchor {'git::begin':
    require => Class['git::package']
  }

  class {'git::package':}

  anchor {'git::end':}

}