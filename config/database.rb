# set the database based on the current environment
database_name = "state_populations_#{Application.environment}"

# connect ActiveRecord with the current database
ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "db/#{database_name}",
)