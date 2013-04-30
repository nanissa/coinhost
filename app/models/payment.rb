class Payment < ActiveRecord::Base
  validates_presence_of :satoshi, :order_id, :transaction_hash

  def self.process params
    return unless params[ 'secret' ] == ENV[ 'SECRET' ]
    return unless params[ 'destination_address' ] == ENV[ 'PAYMENT_ADDRESS' ]

    self.create_for params
  end


  def self.create_for params
    Payment.create do |payment|
      payment.satoshi          = params[ :value            ]
      payment.order_id         = params[ :order_id         ]
      payment.transaction_hash = params[ :transaction_hash ]
    end
  end
end
