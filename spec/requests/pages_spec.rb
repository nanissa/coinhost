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
  describe '/' do
    before do

    end

  end
end