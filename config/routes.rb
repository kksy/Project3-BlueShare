Rails.application.routes.draw do
 
# home page
  get '/' => 'pages#home'

#item
 get '/'


#about page
  get '/about' => 'pages#about'
# resources page called lenders with index,new,edit,delete pages
  resources :lenders

  resources :items

end
