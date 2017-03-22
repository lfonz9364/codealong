require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"
require_relative "database_config"

def run_sql(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  result
end

get '/' do
  sql = "SELECT * FROM dishes;"
  @dishes = run_sql(sql)
  erb :index
end

get '/dishes' do

end

get '/dishes/new' do
  #get new dishes form
  erb :new
end

post '/dishes' do
  # expect things to be passed/sent here into params
  # connect to db
  # craft a sql to create a record
  sql = "INSERT INTO dishes (name, image_url) VALUES('#{ params[:name] }','#{ params[:image_url] }');"
  run_sql(sql)
  # redirect
  redirect '/'
end

#localhost:4567/dishes?id=7 --> put in bottom to avoid breaking others
get '/dishes/:id' do
  #return params[:id]
  sql = "SELECT * FROM dishes WHERE id = #{ params[:id] };"
  @dish = run_sql(sql)[0]
  erb :show
end

delete '/dishes/:id/delete' do
  sql = "DELETE FROM dishes WHERE id = #{ params[:id] };"
  run_sql(sql)
  redirect '/'
end

get '/dishes/:id/edit' do
  @dish = run_sql("SELECT * FROM dishes WHERE id = #{params[:id]}")[0]
  erb :edit
end

put '/dishes/:id' do
  run_sql("UPDATE dishes SET name = '#{ params[:new_name] }', image_url = '#{ params[:new_image_url] }'
          WHERE id = #{ params[:id] };")
redirect '/'
end
