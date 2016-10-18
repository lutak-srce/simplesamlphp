require 'spec_helper_acceptance'

describe 'simplesamlphp class' do

  context 'default parameters' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      #apt::source { 'srce':
      #  location => 'http://ftp.srce.hr/srce-debian/',
      #  release  => 'srce-debian',
      #  repos    => 'main',
      #  key      => {
      #    'id'     => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3',
      #    'server' => 'pks.aaiedu.hr',
      #  },
      #  include  => {
      #    'src' => true,
      #  },
      #}
      #package { 'srce-keyring': ensure => present, }
      class { 'simplesamlphp': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

   # describe package('simplesamlphp-aai') do
   #   it { is_expected.to be_installed }
   # end

  end
end
