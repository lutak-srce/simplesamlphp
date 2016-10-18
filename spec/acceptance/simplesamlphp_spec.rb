require 'spec_helper_acceptance'

describe 'simplesamlphp class' do

  context 'default parameters' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
        class { 'simplesamlphp': 
          package=> 'simplesamlphp'
        }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

  end
end
