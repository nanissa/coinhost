describe Payment do
  it 'creates' do
    expect {
      Payment.create_for payment_params
    }.to change{ Payment.count }.by 1
  end

  context 'missing' do
    describe 'value' do
      let( :value ){ '' }
      
      specify 'fails' do
        expect {
          Payment.create_for payment_params
        }.to_not change{ Payment.count }
      end
    end

    describe 'order_id' do
      let( :order_id ){ '' }
      
      specify 'fails' do
        expect {
          Payment.create_for payment_params
        }.to_not change{ Payment.count }
      end
    end

    describe 'transaction_hash' do
      let( :transaction_hash ){ '' }
      
      specify 'fails' do
        expect {
          Payment.create_for payment_params
        }.to_not change{ Payment.count }
      end
    end
  end
end