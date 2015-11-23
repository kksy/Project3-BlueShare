Rails.application.routes.draw do
 
# home page
  get '/' => 'pages#home'

#item
 get '/'
  
#about page
  get '/about' => 'pages#about'
# resources page called lenders with new,edit,delete pages
  resources :lender

# resources page called lenders with new,edit,delete pages
  resources :items

end
