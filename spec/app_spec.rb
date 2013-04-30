require 'spec_helper'


describe 'App' do
  specify 'does not start without config SECRET'

  specify 'config PAYMENT_ADDRESS is set' do
    CONFIG[ 'PAYMENT_ADDRESS' ].length.should == 34
  end
end