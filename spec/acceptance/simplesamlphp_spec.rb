require 'spec_helper_acceptance'

describe 'simplesamlphp class' do

  context 'default parameters' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      if $::osfamily == 'RedHat' {
        package { 'simplesamlphp':
          provider => 'rpm',
          ensure => present,
          source => 'http://ftp.srce.hr/redhat/base/el7/x86_64/simplesamlphp-aai-1.13.2-2.el7.srce.noarch.rpm'
        }
        #yumrepo { "srce":
        #  baseurl => "http://ftp.srce.hr/redhat/base/$operatingsystemrelease/$architecture/",
        #  descr => "Srce Packages for Enterprise Linux",
        #  enabled => 1,
        #  gpgcheck => 0
        #}
        class { 'simplesamlphp': }
      } else {
          class { 'simplesamlphp': 
            package=> 'simplesamlphp'
          }
        }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

  end
end
