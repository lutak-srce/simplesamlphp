require 'beaker-rspec/spec_helper'
require 'beaker/puppet_install_helper'

hosts.each do |host|
  # Install Puppet
  install_puppet
  apply_manifest_on(host, 'package { "git": }')
end

RSpec.configure do |c|
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    hosts.each do |host|
      # Needed for simplesamlphp module to download simplesamlphp-aai packet
      environmentpath = host.puppet['environmentpath']
      environmentpath = environmentpath.split(':').first if environmentpath

      destdir = "/etc/puppet/modules"
      on host, "git clone -b initial_spec_tests https://github.com/lutak-srce/simplesamlphp #{destdir}/simplesamlphp"
      on host, puppet('module', 'install', 'puppetlabs-apt'), { :acceptable_exit_codes => [0,1] }
    end

  end
end
