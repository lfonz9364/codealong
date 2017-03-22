require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

get '/' do
  #connect to the database
  conn = PG.connect(dbname: 'lead_gen_app')
  #execute a select sql statement
  @leads = conn.exec("select * from leads;")
  #close connection
  conn.close
  erb :index
end
