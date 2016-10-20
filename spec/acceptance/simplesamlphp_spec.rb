require 'spec_helper_acceptance'

describe 'simplesamlphp class' do

  context 'default parameters' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
        # SRCE repos for installation of simplesamlphp-aai package
        if $::osfamily == 'Debian' {
          class { 'apt': }
          apt::source { 'srce-repo':
            key         => {
              'id'     => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3',
              'server' => 'pks.aaiedu.hr',
	    },
            location    => 'http://ftp.srce.hr/srce-debian/',
            release     => "srce-${::lsbdistcodename}",
            repos       => 'main',
            include     => {
              'src' => false,
	    },
            before      => Class['simplesamlphp'],
          }
        } elsif $::osfamily == 'RedHat' {
         yumrepo { 'srce-repo':
          baseurl  => "http://ftp.srce.hr/redhat/base/el${::operatingsystemmajrelease}/$architecture/",
            enabled  => 1,
            gpgcheck => 0,
            before   => Class['simplesamlphp'],
          }
        }
        class { 'simplesamlphp': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

  end
end
