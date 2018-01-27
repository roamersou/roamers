source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'rails', '~> 5.1.4'

gem 'puma', '~> 3.7'
gem 'slim-rails'
gem 'webpacker'

gem 'high_voltage'

gem 'devise'
gem 'omniauth-facebook'

group :development, :test do
  gem 'capybara', '~> 2.13'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate'
  gem 'guard-livereload'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-livereload'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end