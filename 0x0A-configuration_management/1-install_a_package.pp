# Puppet manifest to install Flask version 2.1.0 using pip3

class { 'python':
  version => 'system',
}

class { 'python::pip':
  ensure  => 'present',
  version => 'system',
}

python::pip { 'flask':
  ensure     => '2.1.0',
  provider   => 'pip3',
}

package { 'python3-flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Python::Pip['flask'],
}
