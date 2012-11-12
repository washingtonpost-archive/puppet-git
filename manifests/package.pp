class git::package {
  anchor { 'git::package::begin': }
  anchor { 'git::package::end': }

  case $operatingsystem {
    centos,fedora,rhel: {
      class { 'git::package::redhat':
        require => Anchor['git::package::begin'],
        before  => Anchor['git::package::end'],
      }
    }
    debian,ubuntu: {
      class { 'git::package::debian':
        require => Anchor['git::package::begin'],
        before  => Anchor['git::package::end'],
      }
    }
  }
}
