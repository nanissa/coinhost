require 'spec_helper'


describe 'Render Home Page' do
  it 'succeeds' do
    visit '/pages/index'
    page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
  end

  it 'with /' do
    visit '/'
    page.should have_content 'Looking to purchase Web Hosting with Bitcoin?'
  end
end