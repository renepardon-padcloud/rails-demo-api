source 'https://rubygems.org'

gem 'rails', '3.2.14.rc2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'less-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'twitter-bootstrap-rails'

gem 'json'

# Devise for auth and cancan for permissions
gem 'devise'
gem 'cancan'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'active_scaffold', :path => 'lib/active_scaffold'



group :development, :test do
  # Cannot run as gem and use heroku
  # See: http://stackoverflow.com/questions/6288910/heroku-deployment-gemfile-lock-problem
  # gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'guard-rspec'
end

