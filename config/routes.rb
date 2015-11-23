Rails.application.routes.draw do
 
# home page
  get '/' => 'pages#home'

  get '/home' => 'pages#home'

#about page
  get '/about' => 'pages#about'

#search page
  get '/search' => 'pages#search'

# resources page called lenders with index,new,edit,delete pages
  resources :lenders

  resources :items

  namespace :api do
    resources :items only: [:index, :create, :destroy]
     # resources :ratings only [:index, :create, :destroy]
  end
end
