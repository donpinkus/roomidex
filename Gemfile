source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.0.2'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
# gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'figaro'
gem 'omniauth'
gem 'omniauth-facebook'
# used for FB graph queries
gem "koala", "~> 1.8.0rc1"
gem 'simple_form'
gem "bugsnag"
# search gem
gem "ransack", github: "activerecord-hackery/ransack", branch: "rails-4"
# messaging gem
gem 'mailboxer'
gem 'rspec-rails', :group => [:test, :development]
group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hub', :require=>nil
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end
group :development, :test do
  gem 'factory_girl_rails'
end
group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
