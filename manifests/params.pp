# Class: simplesamlphp::params
class simplesamlphp::params {

  $authmemcookie               = false
  $use_server_port             = false
  $server_port                 = '443'
  $package                     = 'simplesamlphp-aai'
  $package_ensure              = 'present'
  $pkgs_ensure                 = 'present'
  $simplesamlalias             = 'simplesaml'
  $directory                   = '/var/www/html/'
  $username                    = 'hrEduPersonUniqueID'
  $idp                         = 'https://login.aaiedu.hr/sso/saml2/idp/metadata.php'
  $proxyidp                    = 'https://login.aaiedu.hr/proxy/saml2/idp/metadata.php'
  $fedlabidp                   = 'fed-lab.aaiedu.hr'
  $authadminpassword           = 'PromijeniMe'
  $secretsalt                  = 'x1020wd03d24webk02pujzbenkbmeffg'
  $technicalcontactname        = 'Administrator'
  $technicalcontactemail       = 'na@example.org'
  $enable_http_post            = false
  $store_type                  = 'phpsession'
  $store_sql_dsn               = 'sqlite:/path/to/sqlitedatabase.sq3'
  $store_sql_username          = 'null'
  $store_sql_password          = 'null'
  $store_sql_prefix            = 'simpleSAMLphp'
  $file_owner                  = 'root'
  $file_mode                   = '0644'
  $authsources_php_file        = '/usr/share/simplesamlphp-aai/config/authsources.php'
  $authsources_php_epp         = 'simplesamlphp/authsources.php.epp'
  $authsources_php_custom_file = false
  $authsources_php_custom_src  = 'puppet:///modules/simplesamlphp/authsources.php'
  $config_php_file             = '/usr/share/simplesamlphp-aai/config/config.php'
  $config_php_epp              = 'simplesamlphp/config.php.epp'
  $saml20_idp_remote_php_file  = '/usr/share/simplesamlphp-aai/metadata/saml20-idp-remote.php'
  $saml20_idp_remote_php_src   = 'puppet:///modules/simplesamlphp/saml20-idp-remote.php'
  $authmemcookie_php_file      = '/usr/share/simplesamlphp-aai/config/authmemcookie.php'
  $authmemcookie_php_epp       = 'simplesamlphp/authmemcookie.php.epp'
  $authproccustom              = undef

  case $::osfamily {
    'RedHat' : {
      $support_pkgs               = ['memcached', 'mod_auth_memcookie', 'php-pecl-memcache']
      $file_group                 = 'apache'
      $authmemcookie_conf_file    = '/etc/httpd/conf.d/authmemcookie.conf'
      $authmemcookie_conf_epp     = 'simplesamlphp/authmemcookie.conf.epp'

      case $::operatingsystemmajrelease {
        '7'     : { $apache_reload = '/usr/bin/systemctl reload httpd' }
        default : { $apache_reload = '/sbin/service httpd reload' }
      }
    }
    'Debian': {
      $support_pkgs               = ['memcached', 'libmemcache0', 'libapache2-mod-auth-memcookie']
      $file_group                 = 'www-data'
      $authmemcookie_conf_file    = '/etc/apache2/mods-enabled/auth_memcookie.load'
      $authmemcookie_conf_epp     = '/etc/apache2/mods-available/auth_memcookie.load'

      case $::operatingsystemmajrelease {
        '8'     : { $apache_reload = '/bin/systemctl reload apache2' }
        default : { $apache_reload = '/usr/sbin/service apache2 reload' }
      }

    }
    default: {
      fail('The simplesamlphp module is not supported on this OS.')
    }
  }

}
