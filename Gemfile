source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.1'

gem 'sprockets', '~> 2.11.0'
gem 'bcrypt'
# gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '2.3.2.0'
gem 'twitter-bootstrap-rails', '~> 2.2.8'

group :development, :test do
  gem 'sqlite3', '1.3.9'
  gem 'guard-rspec'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
end


group :test do

  # allows us to simulate a user’s interaction with the
  # sample application using a natural English-like syntax
  gem 'capybara'
  gem 'cucumber-rails', :git => 'https://github.com/cucumber/cucumber-rails.git', :require => false
  gem 'minitest', '~> 5.3.0'
  gem 'rspec-rails', '2.11.0'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'factory_girl', '4.2.0'
  gem 'factory_girl_rails', '4.2.0'
  # one of Capybara’s dependencies
  gem 'selenium-webdriver', '2.35.1'
end

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',  group: :doc
gem 'spring',  group: :development

# for deployment to Heroku
group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
