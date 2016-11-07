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
  Boolean        $authmemcookie              = $simplesamlphp::params::authmemcookie,
  Boolean        $use_server_port            = $simplesamlphp::params::use_server_port,
  String         $server_port                = $simplesamlphp::params::server_port,
  String         $package_ensure             = $simplesamlphp::params::package_ensure,
  String         $pkgs_ensure                = $simplesamlphp::params::pkgs_ensure,
  String         $package                    = $simplesamlphp::params::package,
  Array[String]  $support_pkgs               = $simplesamlphp::params::support_pkgs,
  String         $simplesamlalias            = $simplesamlphp::params::simplesamlalias,
  String         $directory                  = $simplesamlphp::params::directory,
  String         $username                   = $simplesamlphp::params::username,
  String         $idp                        = $simplesamlphp::params::idp,
  String         $proxyidp                   = $simplesamlphp::params::proxyidp,
  String         $fedlabidp                  = $simplesamlphp::params::fedlabidp,
  String         $authadminpassword          = $simplesamlphp::params::authadminpassword,
  String         $secretsalt                 = $simplesamlphp::params::secretsalt,
  String         $technicalcontactname       = $simplesamlphp::params::technicalcontactname,
  String         $technicalcontactemail      = $simplesamlphp::params::technicalcontactemail,
  Boolean        $enable_http_post           = $simplesamlphp::params::enable_http_post,
  String         $store_type                 = $simplesamlphp::params::store_type,
  String         $store_sql_dsn              = $simplesamlphp::params::store_sql_dsn,
  String         $store_sql_username         = $simplesamlphp::params::store_sql_username,
  String         $store_sql_password         = $simplesamlphp::params::store_sql_password,
  String         $store_sql_prefix           = $simplesamlphp::params::store_sql_prefix,
  String         $authsources_php_file       = $simplesamlphp::params::authsources_php_file,
  String         $authsources_php_epp        = $simplesamlphp::params::authsources_php_epp,
  String         $config_php_file            = $simplesamlphp::params::config_php_file,
  String         $config_php_epp             = $simplesamlphp::params::config_php_epp,
  String         $saml20_idp_remote_php_file = $simplesamlphp::params::saml20_idp_remote_php_file,
  String         $saml20_idp_remote_php_src  = $simplesamlphp::params::saml20_idp_remote_php_src,
  String         $authmemcookie_php_file     = $simplesamlphp::params::authmemcookie_php_file,
  String         $authmemcookie_php_epp      = $simplesamlphp::params::authmemcookie_php_epp,
  String         $authmemcookie_conf_file    = $simplesamlphp::params::authmemcookie_conf_file,
  String         $authmemcookie_conf_epp     = $simplesamlphp::params::authmemcookie_conf_epp,
  String         $file_owner                 = $simplesamlphp::params::file_owner,
  String         $file_group                 = $simplesamlphp::params::file_group,
  String         $file_mode                  = $simplesamlphp::params::file_mode,
  String         $apache_reload              = $simplesamlphp::params::apache_reload,
) inherits ::simplesamlphp::params {

    class{'simplesamlphp::package': } ->
    class{'simplesamlphp::config' : } ->
    Class['simplesamlphp']

}
