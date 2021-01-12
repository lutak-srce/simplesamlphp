# Class: simplesamlphp
#
# This module manages simplesamlphp
#
# Parameters: none
#
# Actions: Manages simplesamlphp, optionally memcookie module
#
# Requires: srce repo
#
# Sample Usage:
#

class simplesamlphp (
  Boolean          $authmemcookie               = $simplesamlphp::params::authmemcookie,
  Boolean          $use_server_port             = $simplesamlphp::params::use_server_port,
  String           $server_port                 = $simplesamlphp::params::server_port,
  String           $package_ensure              = $simplesamlphp::params::package_ensure,
  String           $pkgs_ensure                 = $simplesamlphp::params::pkgs_ensure,
  String           $package                     = $simplesamlphp::params::package,
  Array[String]    $support_pkgs                = $simplesamlphp::params::support_pkgs,
  String           $simplesamlalias             = $simplesamlphp::params::simplesamlalias,
  String           $directory                   = $simplesamlphp::params::directory,
  String           $username                    = $simplesamlphp::params::username,
  String           $idp                         = $simplesamlphp::params::idp,
  String           $proxyidp                    = $simplesamlphp::params::proxyidp,
  String           $authadminpassword           = $simplesamlphp::params::authadminpassword,
  String           $secretsalt                  = $simplesamlphp::params::secretsalt,
  String           $technicalcontactname        = $simplesamlphp::params::technicalcontactname,
  String           $technicalcontactemail       = $simplesamlphp::params::technicalcontactemail,
  Boolean          $enable_http_post            = $simplesamlphp::params::enable_http_post,
  String           $store_type                  = $simplesamlphp::params::store_type,
  String           $store_sql_dsn               = $simplesamlphp::params::store_sql_dsn,
  String           $store_sql_username          = $simplesamlphp::params::store_sql_username,
  String           $store_sql_password          = $simplesamlphp::params::store_sql_password,
  String           $store_sql_prefix            = $simplesamlphp::params::store_sql_prefix,
  String           $authsources_php_file        = $simplesamlphp::params::authsources_php_file,
  Boolean          $authsources_php_custom_file = $simplesamlphp::params::authsources_php_custom_file,
  String           $authsources_php_custom_src  = $simplesamlphp::params::authsources_php_custom_src,
  String           $config_php_file             = $simplesamlphp::params::config_php_file,
  String           $saml20_idp_remote_php_file  = $simplesamlphp::params::saml20_idp_remote_php_file,
  String           $authmemcookie_php_file      = $simplesamlphp::params::authmemcookie_php_file,
  String           $authmemcookie_php_epp       = $simplesamlphp::params::authmemcookie_php_epp,
  String           $authmemcookie_conf_file     = $simplesamlphp::params::authmemcookie_conf_file,
  String           $authmemcookie_conf_epp      = $simplesamlphp::params::authmemcookie_conf_epp,
  String           $file_owner                  = $simplesamlphp::params::file_owner,
  String           $file_group                  = $simplesamlphp::params::file_group,
  String           $file_mode                   = $simplesamlphp::params::file_mode,
  String           $apache_reload               = $simplesamlphp::params::apache_reload,
  Optional[String] $authproccustom              = $simplesamlphp::params::authproccustom,
) inherits ::simplesamlphp::params {

  case $::lsbdistcodename {
    'buster': {
      $authsources_php_epp       = 'simplesamlphp/authsources.php_1-18-8.epp'
      $config_php_epp            = 'simplesamlphp/config.php_1-18-8.epp'
      $saml20_idp_remote_php_src = 'puppet:///modules/simplesamlphp/saml20-idp-remote_1-18-8.php'
      $fedlabidp                 = 'https://fed-lab.aaiedu.hr/sso/saml2/idp/metadata.php'
      $session_cookie_secure     = true
    }
    default: {
      $authsources_php_epp       = 'simplesamlphp/authsources.php.epp'
      $config_php_epp            = 'simplesamlphp/config.php.epp'
      $saml20_idp_remote_php_src = 'puppet:///modules/simplesamlphp/saml20-idp-remote.php'
      $fedlabidp                 = 'fed-lab.aaiedu.hr'
      $session_cookie_secure     = false
      }
  }

    class{'simplesamlphp::package': }
    -> class{'simplesamlphp::config' : }
    -> Class['simplesamlphp']

}
