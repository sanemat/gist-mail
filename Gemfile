source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.4'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'devise'
gem 'thin'
gem 'rails_config'

# Gems used only for assets and not required
# in production environments by default.

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'heroku-dev-env', github: 'rwz/heroku-dev-env'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-doc'
  gem 'debugger' if !ENV['TRAVIS']
  gem 'coveralls', require: false
end

group :development do
  gem 'letter_opener', github: 'ryanb/letter_opener'
end

group :test do
  gem 'webmock'
  gem 'timecop'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :assets do
  gem 'sass-rails',   '~> 4.0.2'
  gem 'coffee-rails', '~> 4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.3.0'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
