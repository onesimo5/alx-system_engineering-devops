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
}
