# Class: simplesamlphp::package
class simplesamlphp::package {

  package {  $simplesamlphp::package: ensure => $simplesamlphp::package_ensure, }

  if $simplesamlphp::authmemcookie == true {
    package { $simplesamlphp::support_pkgs: ensure => $simplesamlphp::pkgs_ensure, }
  }

}
