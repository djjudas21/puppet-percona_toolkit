# Class: percona_toolkit
# ===========================
#
# Install Percona yum repo and Percona Toolkit
#
class percona_toolkit {
  if $::osfamily == 'RedHat' {
    # Install Percona yum repo
    package { 'percona-release':
      provider => 'rpm',
      ensure   => 'installed',
      source   => 'http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm',
    }

    # Install Percona Toolkit
    package { 'percona-toolkit':
      ensure  => 'installed',
      require => Package['percona-release'],
    }
  } else {
      warning('percona_toolkit module only support on Red Hat compatible distributions')
  }
}
