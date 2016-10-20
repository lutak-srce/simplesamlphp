require 'spec_helper_acceptance'

describe 'simplesamlphp class' do

  context 'default parameters' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
        if $::osfamily == 'Debian' {
          class { 'apt': }
          apt::source { 'srce-repo':
            key         => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3',
            key_server  => 'pks.aaiedu.hr',
            location    => 'http://ftp.srce.hr/srce-debian/',
            release     => "srce-${::lsbdistcodename}",
            repos       => 'main',
            include_src => false,
            before      => Class['simplesamlphp'],
          }
          exec { "apt-update":
            command => "/usr/bin/apt-get update"
          }
          Exec["apt-update"] -> Package <| |>
        } elsif $::osfamily == 'RedHat' {
         yumrepo { 'srce-repo':
          baseurl  => "http://ftp.srce.hr/redhat/base/el7/$architecture/",
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
