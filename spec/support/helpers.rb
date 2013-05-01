module RequestHelpers
  extend ActiveSupport::Concern
  included do
    let( :navbar_css      ){ 'div#navbar'      }
    let( :domain          ){ 'my-domain.com'   }
    let( :payment_address ){ 'PAYMENT_ADDRESS' }
    let( :email           ){ 'joe@example.com' }
    let( :order_id        ){ '12345'           }

    let( :value            ){ '10000'                             }
    let( :transaction_hash ){ 'abcde12345'                        }
    let( :payment_params   ){{ value:value, order_id:order_id     , 
                               transaction_hash:transaction_hash  ,
                               destination_address:CONFIG[ 'PAYMENT_ADDRESS' ],
                               secret:ENV[ 'SECRET' ]            }}

    before do
      BlockchainInfo.stub( :payment_address_for ).and_return 'PAYMENT_ADDRESS'
      Order.stub( :generate_order_id ).and_return order_id
    end
  end
end

def get_started
  visit '/get_started'
  fill_in 'domain', with: domain
  fill_in 'email', with: email
  check 'use_existing_domain'
  click_button 'Continue'
end

def process_payment
  get '/process_payment', payment_params
end