define git::commands::clone(
    $repo_name,
    $source,
    $user,
    $path='',
    $env_path=[ "/usr/local/bin/", "/usr/bin/", "/bin/" ],
    ){
    File {
        owner => 'root',
        group => 'root',
        mode  => '0644',
    }
    exec { "clone_repo_${name}":
        command => "git clone ${source}",
        cwd => "${path}",
        user => $user,
        path => $env_path,
        require => Class['git::package'],
        logoutput => true,
        creates => "${path}${repo_name}/.git",
    }
}
