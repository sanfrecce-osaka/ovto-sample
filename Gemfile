# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby "#{RUBY_VERSION}"

gem 'rails'
gem 'pg'
gem 'puma'
gem 'sassc-rails'

gem 'jbuilder'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'hirb'
  gem 'rails-flog', require: 'flog'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'test-queue'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'spring-commands-rspec'
  gem 'bullet'
  gem 'guard-livereload', require: false
  gem 'erd'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'launchy'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'config'
gem 'haml-rails'
gem 'webpacker', '~> 4.x'
gem 'devise'
gem 'bootsnap', require: false
gem 'opal-rails'
gem 'ovto'
