class Order < ActiveRecord::Base
  validates_presence_of :id, :domain, :email

  def self.generate_order_id
    ( Time.now.to_i - 1363517100 ) * 100
  end

  def self.create_for params
    Order.create do |order|
      order.email  = params[ :email    ]
      order.domain = params[ :domain   ]      
      order.use_existing_domain = params[ :use_existing_domain ]
      order.id     = params[ :order_id ]
    end
  end
end
