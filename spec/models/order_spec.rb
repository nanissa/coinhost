describe Order do
  before do
    Order.unstub :generate_order_id
  end
  
  it 'gets order id' do
    Order.generate_order_id.should == ( Time.now.to_i - 1363517100 ) * 100
  end
end