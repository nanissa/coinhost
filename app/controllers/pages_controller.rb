class PagesController < ApplicationController

  def get_started
    @order_id = Order.generate_order_id
    @payment_address = BlockchainInfo.payment_address_for @order_id
  end

  def process_order
    @order = Order.create_for params
    @payment_address = params[ :payment_address ]

    render 'process_order_error' if @order.invalid?
  end

  def bitcoin_getting_ready_to_pop
    render 'pages/seo/bitcoin_getting_ready_to_pop', layout: false
  end
end
