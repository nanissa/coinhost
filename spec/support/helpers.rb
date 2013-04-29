module RequestHelpers
  extend ActiveSupport::Concern
  included do
    let( :navbar_css      ){ 'div#navbar'      }
    let( :domain          ){ 'my-domain.com'   }
    let( :payment_address ){ 'PAYMENT_ADDRESS' }
    let( :email           ){ 'joe@example.com' }
    let( :order_id        ){ '12345'           }

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