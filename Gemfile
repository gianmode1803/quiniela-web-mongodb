source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'mongoid'

gem 'rails', '~> 5.0.6'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

#Agregadas
gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'devise-i18n'
gem 'devise_invitable'
gem 'breadcrumbs_on_rails', '~> 3.0', '>= 3.0.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'cancancan', '~> 2.2'
gem 'simple_form', '~> 4.0'
gem 'pry'
gem 'pry-rails', :group => :development
gem 'oj'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'bcrypt'
gem 'flickraw'
gem 'figaro'
gem 'twitter'
gem 'dotenv-rails'
gem 'binding_of_caller', '~> 0.8.0'

#degradacion de minitest
gem 'minitest', '5.10.3'


group :development, :test do
  gem 'better_errors', '~> 2.4'
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
