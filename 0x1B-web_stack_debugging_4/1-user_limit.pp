<<<<<<< HEAD
# Fix problem of high amount files opened

exec {'replace-1':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  before   => Exec['replace-2'],
}

exec {'replace-2':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
=======
# enable the user holberton to login and open files without error

# Increase hard file limit for Holberton user
exec { 'increase-hard-file-limit-for-holberton-user':
  command => "sed -i '/^hloberton hard/s/4/50000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:bin/'
}

# Increases soft file limit for Holberton user.
exec { 'increaese-soft-file-limit-for holberton-user':
  command => 'sed -i "/^holberton soft/s/5/50000" /etc/security/limits.conf'
  path    => '/usr/local/bin/:/bin/'
>>>>>>> a0652b615314a730b7d1d098c24f3fc477367c21
}
