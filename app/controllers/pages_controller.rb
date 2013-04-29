class PagesController < ApplicationController

  def get_started
    @payment_address = BlockchainInfo.payment_address
    @order_id = BlockchainInfo.order_id
  end

  def bitcoin_getting_ready_to_pop
    render 'pages/seo/bitcoin_getting_ready_to_pop', layout: false
  end
end
