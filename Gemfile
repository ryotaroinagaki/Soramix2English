source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.6'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'sassc-rails'

# ログイン機能
gem 'sorcery', '~> 0.16.5'
# 国際化
gem 'rails-i18n'
# 環境固有設定
gem 'config'
# Googleログイン
gem 'googleauth'
# Twitterシェア
gem 'meta-tags'
# AWS S3
gem 'aws-sdk-s3', require: false
# ページネーション
gem 'kaminari'

group :development, :test do
  gem 'capybara'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rubyzip', '~> 2.3', '>= 2.3.2'
  gem 'webdrivers', '~> 5.2', require: false
end

group :development do
  gem 'web-console'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'letter_opener_web', '~> 2.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'solargraph'
end
