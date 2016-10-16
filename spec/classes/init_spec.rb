require 'spec_helper'
describe 'simplesamlphp', :type => :class do
  context "on a RHEL 5 OS" do
    let :facts do
      {
        :osfamily                  => 'RedHat',
        :operatingsystemmajrelease => '5',
      }
    end
    it { is_expected.to contain_package("simplesamlphp-aai") }
    it { should compile }
  end
  context "on a RHEL 6 OS" do
    let :facts do
      {
        :osfamily                  => 'RedHat',
        :operatingsystemmajrelease => '6',
      }
    end
    it { is_expected.to contain_package("simplesamlphp-aai") }
    it { should compile }
  end
  context "on a RHEL 7 OS" do
    let :facts do
      {
        :osfamily                  => 'RedHat',
        :operatingsystemmajrelease => '7',
      }
    end
    it { is_expected.to contain_package("simplesamlphp-aai") }
    it { should compile }
  end
  context "on a Debian OS" do
    let :facts do
      {
        :osfamily                  => 'Debian',
        :operatingsystemmajrelease => '8',
      }
    end
    it { is_expected.to contain_package("simplesamlphp-aai") }
    it { should compile }
  end
end
