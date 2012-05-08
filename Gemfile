source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'jquery-rails'
gem 'devise'
gem 'inherited_resources'
gem 'carrierwave'
gem 'slim-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

group :development, :test do
  gem 'pry'
  gem 'database_cleaner'
  gem 'sqlite3', platform: :ruby
  gem 'jdbc-sqlite3', platform: :jruby
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
end
