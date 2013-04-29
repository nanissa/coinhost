class Order < ActiveRecord::Base
  validates_presence_of :id, :domain, :email


  def self.generate_order_id
    ( Time.now.to_i - 1363517100 ) * 100
  end

  def self.create_for params
    Order.create do |order|
      order.id     = params[ :order_id ]
      order.domain = params[ :domain   ]
      order.email  = params[ :email    ]
      order.use_existing_domain = params[ :use_existing_domain ]
    end
  end
end
