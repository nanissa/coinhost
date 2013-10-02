class BlockchainInfo
  APP_DOMAIN = 'getcoinhost.com'
  RECEIVING_ADDRESS = 'YOUR_BITCOIN_PAYMENT_ADDRESS'
  BLOCKCHAIN_URL = 'https://blockchain.info/api/receive'

  def self.payment_address_for order_id
    callback_url = "http://#{ APP_DOMAIN }/process_payment?" + 
                    'secret=' + ENV[ 'SECRET' ] + 
                    '&order_id=' + order_id.to_s
    
    params = { method:  'create',
               address:  RECEIVING_ADDRESS,
               shared:  'false',
               callback: callback_url     }
    
    uri       = URI( BLOCKCHAIN_URL )
    
    uri.query = URI.encode_www_form( params )

    response  = Net::HTTP.get_response( uri )
    object    = JSON.parse( response.body )

    Rails.logger.info object

    object[ 'input_address' ]
  end
end