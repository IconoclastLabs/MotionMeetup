require "active_record"
cwd = File.dirname(__FILE__)+"/.."
ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["RACK_ENV"]])
ActiveRecord::Base.verify_active_connections!

# if you use NewRelic, set your NEWRELIC_DISPATCHER environment variable on heroku, per
# https://github.com/puma/puma/issues/128 - may not be needed for future releases of Puma

#heroku config:add NEWRELIC_DISPATCHER=Puma