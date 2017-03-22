require 'sinatra/reloader'

#route
get '/hello' do
  #params is a special variable which is hash
  "hello there #{ params[:name] }"
end
array = [1,2,3]
array [1]

get '/yummy_food' do # request

  #'<html><body><h1>here is your pizza</h1></body></html>' #response
  erb(:pizza)

end

get '/cake' do # request

  'cake' + 'pudding' #response

end

#http://localhost:4567/calculator?num1=2&num2=3
get '/calculator' do
  #respond with the sum of two numbers
  result = params[:num1].to_i + params[:num2].to_i
  result.to_s
end
