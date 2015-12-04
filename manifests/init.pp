# Class: simplesamlphp
#
# This module manages simplesamlphp
#
# Parameters: none
#
# Actions: Manages simplesamlphp with memcookie
#
# Requires: srce repo
#
# Sample Usage:
#

class simplesamlphp { 

  class{'simplesamlphp::package': } ->
  class{'simplesamlphp::config':  } ->
  Class['simplesamlphp']

}

