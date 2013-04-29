require 'spec_helper'


describe BlockchainInfo do
  before do
    BlockchainInfo.unstub :payment_address_for
  end
  
  it 'gets payment address' do
    BlockchainInfo.payment_address_for( order_id ).length.should >= 33
    BlockchainInfo.payment_address_for( order_id ).length.should <= 34
  end
end