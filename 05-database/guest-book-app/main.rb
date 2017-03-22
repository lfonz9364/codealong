require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

get '/' do
  conn = PG.connect(dbname: 'guest_book_app')
  @headings = conn.exec("select column_name from information_schema.columns where
             table_name='comments';")
  @comments = conn.exec("SELECT * FROM comments;")
  erb :index
end

post '/comments' do
  conn = PG.connect(dbname: 'guest_book_app')
  sql = "INSERT INTO comments(name,body,url)
  VALUES ('#{ params[:name] }','#{ params[:comment]}','#{ params[:url]}');"
  conn.exec(sql)
  conn.close

  redirect '/'
end
