source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.2.1'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'haml-rails'
gem 'faker'
gem 'kaminari'
gem 'sassc-rails'
gem 'rails-i18n', '~> 5.1'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'redcarpet', '3.4.0'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end
