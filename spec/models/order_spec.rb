describe Order do
  let( :order_params ){{ domain:domain, email:email, 
                         order_id:order_id        }}

  before do
    Order.unstub :generate_order_id
  end

  it 'gets order id' do
    Order.generate_order_id.should == ( Time.now.to_i - 1363517100 ) * 100
  end

  it 'creates' do
    expect{ 
      Order.create_for order_params
    }.to change { Order.count }.by 1
  end
end