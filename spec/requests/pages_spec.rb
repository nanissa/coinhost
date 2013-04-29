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

describe 'Get Started',focus:true do
  before do
    BlockchainInfo.stub( :payment_address ).and_return'PAYMENT_ADDRESS'
    visit '/get_started'
  end

  it 'renders' do
    page.should have_css 'div#get_started'
  end

  it 'has no navbar' do
    page.should_not have_css navbar_css
  end

  it 'has payment address' do
    page.should have_content BlockchainInfo.payment_address
  end

  it 'has order id' do
    page.should have_css "form input[name='order_id'][value='#{ BlockchainInfo.order_id }']"
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
