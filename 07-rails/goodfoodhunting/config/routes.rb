Rails.application.routes.draw do

  get '/login', to: 'session#new'

  post '/session', to: 'session#create'

  delete '/session', to: 'session#destroy'

                    #controller name, method/action
  get '/about', to: 'pages#about'

  post '/likes', to: 'likes#create'

  get '/dishes', to: 'dishes#index'
  get '/dishes/new', to: 'dishes#new' #get the form
  post '/dishes', to: 'dishes#create'
  delete '/dishes', to: 'dishes#destroy'
  get '/dishes/:id', to: 'dishes#show'

  # get '/' to: 'dishes#index'
  root 'dishes#index'
end
