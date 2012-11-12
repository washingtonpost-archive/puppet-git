class git::package::debian {
    package {'git':
        ensure => present,
    }
}