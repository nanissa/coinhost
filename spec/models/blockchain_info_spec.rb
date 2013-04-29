require 'spec_helper'


describe BlockchainInfo do
  it 'gets payment address' do
    BlockchainInfo.payment_address.length.should == 34
  end

  it 'gets order id' do
    BlockchainInfo.order_id.should == (( Time.now.to_i - 1363517100 ) * 100).to_s
  end

end