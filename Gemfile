source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0.beta1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'
gem 'thin'

group :production do
  gem 'pg'
end

group :test, :development do
  gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
end


group :test do
  gem 'rspec-rails'
  gem 'rack-test'
  gem 'guard-rspec'
  gem 'database_cleaner', '1.0.0.RC1'
  gem 'factory_girl_rails'
  gem 'capybara', '0.4.1.2'
  gem 'simplecov', :require => false, :group => :test
  gem 'launchy'
  gem 'spork', '~> 1.0rc'

  # gem 'spork-rails'
  # gem 'guard-spork'
  # gem 'spork', '>= 1.0rc0'
  # gem 'webmock'
end