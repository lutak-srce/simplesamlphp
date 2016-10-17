require 'spec_helper_acceptance'

describe 'simplesamlphp' do
  describe 'running puppet code' do
    it 'should work with no errors' do
      pp = <<-EOS
        class { 'simplesamlphp': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
end
