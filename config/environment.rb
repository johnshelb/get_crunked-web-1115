require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/get_crunked_development.db"
)

$: << '.'
Dir["app/models/*.rb"].each {|f| require f}
