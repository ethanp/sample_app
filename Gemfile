source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.1'

group :development, :test do
  gem 'sqlite3', '1.3.9'
  gem 'rspec-rails', '2.13.1'
end

group :test do
  # one of Capybara’s dependencies
  gem 'selenium-webdriver', '2.35.1'

  # allows us to simulate a user’s interaction with the
  # sample application using a natural English-like syntax
  gem 'capybara', '2.1.0'
end

gem 'sass-rails', '~> 4.0.3'
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
