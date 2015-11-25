Rails.application.routes.draw do

# home page
  get '/' => 'pages#home'


  get '/home' => 'pages#home'

#about page
  get '/about' => 'pages#about'

#search page
  get '/search' => 'pages#search'


 # get '/items/:id' => 'items#show'

# Get user routes
 get '/user' => 'users#home'
 #
 get '/edit_profile' => 'users#edit' # to show the form
 put '/user_edit' => 'users#update'
 #
 get '/signup' => 'users#new'
 #
 put '/user_signup' => 'users#create'


 put '/user_edit' => 'users#home'


 # delete '/user_delete' => 'users#destroy'
 # get 'user/edit' =>
 resources :users

#about page
 get '/about' => 'pages#about'

# resources page called lenders with index,new,edit,delete pages
  resources :users

  resources :items

  namespace :api do
    resources :items, only: [:index, :create, :destroy]
     # resources :ratings only [:index, :create, :destroy]
  end

  get '/login' => 'session#login'

  post '/login' => 'session#create'

  delete '/logout' => 'session#destroy'


  resources :session

end
