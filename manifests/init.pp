# Class: percona_toolkit
# ===========================
#
# Install Percona yum repo and Percona Toolkit
#
class percona_toolkit {

  package { 'percona-release':
    provider => 'rpm',
    ensure   => 'installed',
    source   => 'http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm',
  }

  package { 'percona-toolkit':
    ensure  => 'installed',
    require => Package['percona-release'],
  }

}
