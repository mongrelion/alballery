source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'jquery-rails'
gem 'devise'
gem 'inherited_resources'
gem 'carrierwave'
gem 'slim-rails'
gem 'jruby-openssl', :platform => :jruby
gem 'mini_magick'
gem 'fog'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'pry'
  gem 'database_cleaner'
  gem 'sqlite3', :platform => :ruby
  gem 'activerecord-jdbcsqlite3-adapter', :platform => :jruby
end

group :development do
  gem 'foreman'
end

group :test do
  gem 'capybara'
  gem 'fabrication'
  gem 'faker'
  gem 'cucumber-rails', '1.3.0'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'launchy'
end

group :production do
  gem 'therubyracer'
  gem 'pg'
  gem 'unicorn', :platform => :ruby
end
