require 'spec_helper'


describe 'Home Page' do
  it 'renders' do
    visit '/pages/index'
    page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
  end

  it 'renders from /' do
    visit '/'
    page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
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
