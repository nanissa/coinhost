source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

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

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :test do
  gem 'rspec-rails'
  gem 'rack-test'
  gem 'guard-rspec'
  gem 'database_cleaner', '1.0.0.RC1'
  gem 'factory_girl_rails'
  gem 'capybara', '0.4.1.2'
  gem 'simplecov', :require => false, :group => :test
  gem 'launchy'

  # gem 'spork-rails'
  # gem 'guard-spork'
  # gem 'spork', '>= 1.0rc0'
  # gem 'webmock'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
