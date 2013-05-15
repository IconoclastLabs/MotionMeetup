source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.13'

group :production do
  #heroku only has PostgreSQL
  gem 'thin'
  gem "pg"
  gem 'dalli' #managed access to memcache on heroku
end

group :test, :development do
  gem 'awesome_print'
  gem 'sqlite3'
  gem 'turn'
  gem 'minitest-spec-rails'
  gem 'puma'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'interactive_editor'
  gem "quiet_assets", ">= 1.0.1"
  gem 'guard'
  gem 'guard-rails'
  gem 'guard-minitest'
  gem 'guard-annotate'
  gem "guard-puma"
  gem 'guard-bundler', "~> 1.0.0"
  gem 'brakeman'
  gem 'guard-brakeman'
  #gem 'guard-test'
  gem "sextant" # adds route display info to /rails/routes
  gem "better_errors"
  gem "binding_of_caller"
  gem 'annotate'
  #gem "literate_randomizer"
  # Filesystem notifiers
  gem 'ruby_gntp' # Growl notification protocol
  #gem 'libnotify'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'madmimi'
gem "haml-rails", ">= 0.4"
gem "html2haml", ">= 1.0.1", :group => :development
#gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "bootstrap-sass", ">= 2.3.0.0"
gem "omniauth", ">= 1.1.3"
gem "omniauth-github"
gem "simple_form", ">= 2.1.0"
gem "figaro", ">= 0.6.3"

