# Class: simplesamlphp::config
class simplesamlphp::config {

  file { $simplesamlphp::authsources_php_file:
    ensure  => file,
    content => epp($simplesamlphp::authsources_php_epp),
    owner   => $simplesamlphp::file_owner,
    group   => $simplesamlphp::file_group,
    mode    => $simplesamlphp::file_mode,
  }

  file { $simplesamlphp::config_php_file:
    ensure  => file,
    content => epp($simplesamlphp::config_php_epp),
    owner   => $simplesamlphp::file_owner,
    group   => $simplesamlphp::file_group,
    mode    => $simplesamlphp::file_mode,
  }

  file { $simplesamlphp::simplesamlphp_conf_file:
    ensure  => file,
    content => epp($simplesamlphp::simplesamlphp_conf_epp),
    owner   => $simplesamlphp::file_owner,
    group   => $simplesamlphp::file_group,
    mode    => $simplesamlphp::file_mode,
  }

  file { $simplesamlphp::saml20_idp_remote_php_file:
    ensure  => file,
    source  => $simplesamlphp::saml20_idp_remote_php_src,
    owner   => $simplesamlphp::file_owner,
    group   => $simplesamlphp::file_group,
    mode    => $simplesamlphp::file_mode,
  }

  exec { 'reload apache service':
    subscribe   => File[$simplesamlphp::simplesamlphp_conf_file],
    command     => $simplesamlphp::apache_reload,
    refreshonly => true,
  }

  if $simplesamlphp::authmemcookie == true {

    file { $simplesamlphp::authmemcookie_php_file:
      ensure  => file,
      content => epp($simplesamlphp::authmemcookie_php_epp),
      owner   => $simplesamlphp::file_owner,
      group   => $simplesamlphp::file_group,
      mode    => $simplesamlphp::file_mode,
    }

    case $facts['os']['family'] {
      'RedHat'  : {
        file { $simplesamlphp::authmemcookie_conf_file:
          ensure  => file,
          content => epp($simplesamlphp::authmemcookie_conf_epp),
          owner   => $simplesamlphp::file_owner,
          group   => $simplesamlphp::file_group,
          mode    => $simplesamlphp::file_mode,
        }
        exec { 'reload httpd service for authmemcookie':
          subscribe   => File[$simplesamlphp::authmemcookie_conf_file],
          command     => $simplesamlphp::apache_reload,
          refreshonly => true,
          }
      }
      'Debian' : {
        file { $simplesamlphp::authmemcookie_conf_file:
          ensure => link,
          target => $simplesamlphp::authmemcookie_conf_epp,
        }
        exec { 'reload apache2 service for authmemcookie':
          subscribe   => File[$simplesamlphp::authmemcookie_conf_file],
          command     => $simplesamlphp::apache_reload,
          refreshonly => true,
        }
      }
      default: { }
    }
  }

}
