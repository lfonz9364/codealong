require "pry"
require "sinatra"
require "sinatra/reloader"

$leads = ['kev', 'mark', 'sam']

get '/' do
  @info = ''
  erb :index #default value is true
end

post '/thanks' do
  # am I getting the form data
  # store it in a file
  File.open('data.csv', 'a') do |file|
    file << "Name: #{params[:name]}\n"
    file << "E-mail: #{params[:email]}"
  end
  # open the file in write mode use File.open()
  $leads << params[:name]
  # show thank you page
  @info = 'thanks ' + params[:name]
  # inside of rendering here
  # redirect to a safe route
  # erb :index
  redirect '/?'
end

get '/admin' do
  @leads = [] # assuming I will get an array of leads
  File.open('data.csv') do |file|
    file.each do |line|
      @leads << line.chomp
    end
  end
  erb :admin
end
