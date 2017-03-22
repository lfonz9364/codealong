require "pry"
require "sinatra"
require "sinatra/reloader"

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/donate' do
  erb :donate
end

get '/calc' do
  magic_number = params[:num1].to_i + params[:num2].to_i
  erb :result, locals: { goal: magic_number }
  #, locals: { goal: magic_number } could be replaced into @magic_number
end

get '/thank_you' do
  @usr_email = params[:email]
  erb :thank_you
end
