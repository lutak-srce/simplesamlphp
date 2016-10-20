require 'beaker-rspec/spec_helper'
require 'beaker/puppet_install_helper'

hosts.each do |host|
  # Install Puppet & git
  run_puppet_install_helper
  apply_manifest_on(host, 'package { "git": }')
end

RSpec.configure do |c|
  # module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    hosts.each do |host|
      puppet('module','install','puppetlabs-apt')
      environmentpath = host.puppet['environmentpath']
      environmentpath = environmentpath.split(':').first if environmentpath
      destdir = "#{environmentpath}/production/modules"
      on host, "git clone -b initial_unit_testing https://github.com/lutak-srce/simplesamlphp #{destdir}/simplesamlphp"
    end

  end
end
