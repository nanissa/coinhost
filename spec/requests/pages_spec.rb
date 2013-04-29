require 'spec_helper'


describe 'Home Page' do
  it 'renders' do
    visit '/pages/index'
    page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
  end

  describe 'renders from /' do
    before {
      visit '/'
    }
    specify {
      page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
    }
    specify {
      page.should have_css 'header#masthead'
    }
  end
end


describe 'TOS' do
  it 'renders' do
    visit '/pages/tos'
    page.should have_content 'THE SHORT VERSION'
  end
end


describe 'Why Coinhost?' do
  it 'renders' do
    visit '/pages/why'
    page.should have_content 'CoinHost offers service'
  end
end

describe 'Nav Bar' do
  before do
    visit '/'
  end
  it 'renders' do
    page.should have_css 'div.navbar'
  end
end


describe 'Get Started' do
  before do
    Order.stub( :generate_order_id ).and_return order_id
    visit '/get_started'
  end

  it 'renders' do
    page.should have_css 'div#get_started'
  end

  it 'has no navbar' do
    page.should_not have_css navbar_css
  end

  it 'has payment address content' do
    page.should have_content BlockchainInfo.payment_address_for order_id
  end

  it 'has payment address input' do
    page.should have_css "form input[name='payment_address'][value='#{ BlockchainInfo.payment_address_for order_id }']"
  end

  it 'has order id' do
    page.should have_css "form input[name='order_id'][value='#{ order_id }']"
  end
end


describe 'Creates Order' do
  it 'succeeds' do
    expect{ get_started }.to change{ Order.count }.by 1
  end
end


describe 'Process Valid Order' do
  before do
    get_started
  end

  it 'renders' do
    page.should have_css 'div#process_order'
  end

  it 'has no navbar' do
    page.should_not have_css navbar_css
  end

  it 'has payment address' do
    page.should have_content payment_address
  end

  it 'has order id' do
    page.should have_content Order.last.id.to_s
  end

  it 'has email' do
    page.should have_content email
  end

  it 'Continue links to home page' do
    page.should have_link( 'Continue', :href => '/')
  end
  
  it 'saves use existing domain' do
    Order.last.use_existing_domain.should be_true
  end
end


describe 'Order Missing' do
  describe 'order id' do
    before do
      Order.stub( :generate_order_id ).and_return
      get_started
    end

    it 'fails' do
      page.find( '#error' ).
        should have_content 'There was a problem with your order. Please go back and try again.'
    end
  end

  describe 'domain' do
    let( :domain ){ }
    before do
      get_started
    end
    
    it 'fails' do
      page.find( '#error' ).
        should have_content 'There was a problem with your order. Please go back and try again.'
    end
  end

  describe 'email' do
    let( :email ){ }
    before do
      get_started
    end
    
    it 'fails' do
      page.find( '#error' ).
        should have_content 'There was a problem with your order. Please go back and try again.'
    end
  end


end


describe 'gets SEO page' do
  before do
    visit '/bitcoin-getting-ready-to-pop/'
  end

  it 'renders' do
    page.should have_css 'div.seo_page'
  end
end
