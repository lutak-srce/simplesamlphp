# Class: simplesamlphp::params
class simplesamlphp::params {

  $authmemcookie         = false
  $package               = 'simplesamlphp-aai'
  $package_ensure        = 'present'
  $pkgs_ensure           = 'present'
  $simplesamlalias       = 'simplesaml'
  $directory             = '/var/www/html/'
  $username              = 'hrEduPersonUniqueID'
  $idp                   = 'https://login.aaiedu.hr/sso/saml2/idp/metadata.php'
  $proxyidp              = 'https://login.aaiedu.hr/proxy/saml2/idp/metadata.php'
  $fedlabidp             = 'fed-lab.aaiedu.hr'
  $authadminpassword     = 'PromijeniMe'
  $secretsalt            = 'x1020wd03d24webk02pujzbenkbmeffg'
  $technicalcontactname  = 'Administrator'
  $technicalcontactemail = 'na@example.org'
  $file_owner            = 'root'
  $file_mode             = '0644'
  $apache_reload         = '/sbin/service httpd reload'

  case $facts['os']['family'] {
    'RedHat' : {
      $support_pkgs               = ['memcached', 'mod_auth_memcookie', 'php-pecl-memcache']
      $file_group                 = 'apache'
      $authsources_php_file       = '/usr/share/simplesamlphp-aai/config/authsources.php'
      $authsources_php_epp        = 'simplesamlphp/centos/authsources.php.epp'
      $config_php_file            = '/usr/share/simplesamlphp-aai/config/config.php'
      $config_php_epp             = 'simplesamlphp/centos/config.php.epp'
      $saml20_idp_remote_php_file = '/usr/share/simplesamlphp-aai/metadata/saml20-idp-remote.php'
      $saml20_idp_remote_php_src  = 'puppet:///modules/simplesamlphp/centos/saml20-idp-remote.php'
      $simplesamlphp_conf_file    = '/etc/httpd/conf.d/simplesamlphp.conf'
      $simplesamlphp_conf_epp     = 'simplesamlphp/centos/simplesamlphp.conf.epp'
      $authmemcookie_php_file     = '/usr/share/simplesamlphp-aai/config/authmemcookie.php'
      $authmemcookie_php_epp      = 'simplesamlphp/centos/authmemcookie.php.epp'
      $authmemcookie_conf_file    = '/etc/httpd/conf.d/authmemcookie.conf'
      $authmemcookie_conf_epp     = 'simplesamlphp/centos/authmemcookie.conf.epp'
    }
    'Debian': {
      $support_pkgs               = ['memcached', 'libapache2-mod-auth-memcookie']
      $file_group                 = 'www-data'
      $authsources_php_file       = '/etc/simplesamlphp/authsources.php'
      $authsources_php_epp        = 'simplesamlphp/debian/authsources.php.epp'
      $config_php_file            = '/etc/simplesamlphp/config.php'
      $config_php_epp             = 'simplesamlphp/debian/config.php.epp'
      $saml20_idp_remote_php_file = '/etc/simplesamlphp/metadata/saml20-idp-remote.php'
      $saml20_idp_remote_php_src  = 'puppet:///modules/simplesamlphp/debian/saml20-idp-remote.php'
      $simplesamlphp_conf_file    = '/etc/apache2/conf.d/simplesamlphp-aai.conf'
      $simplesamlphp_conf_epp     = 'simplesamlphp/debian/simplesamlphp.conf.epp'
      $authmemcookie_php_file     = '/etc/simplesamlphp/authmemcookie.php'
      $authmemcookie_php_epp      = 'simplesamlphp/debian/authmemcookie.php.epp'
      $authmemcookie_conf_file    = '/etc/apache2/mods-enabled/auth_memcookie.load'
      $authmemcookie_conf_epp     = '/etc/apache2/mods-available/auth_memcookie.load'
    }
    default: { }
  } 

}
