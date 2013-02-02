source 'https://rubygems.org'

ruby '1.9.3' if ENV['HEROKU_POSTGRESQL_AMBER_URL'] # heroku specific
gem 'rails', '3.2.11'

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
  gem 'heroku-dev-env'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-doc'
  gem 'debugger' if !ENV['TRAVIS'] && RUBY_VERSION < '2.0'
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
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
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
