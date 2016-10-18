require 'beaker-rspec/spec_helper'
require 'beaker/puppet_install_helper'

hosts.each do |host|
  # Install Puppet
  run_puppet_install_helper
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

      destdir = "#{environmentpath}/production/modules"
      on host, "git clone -b initial_spec_tests https://github.com/lutak-srce/simplesamlphp #{destdir}/simplesamlphp"
      on host, "git clone -b master https://github.com/lutak-srce/aptrepo #{destdir}/aptrepo"
      on host, puppet('module', 'install', 'puppetlabs-apt'), { :acceptable_exit_codes => [0,1] }
    end

  end
end
