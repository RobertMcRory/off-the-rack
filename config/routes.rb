Rails.application.routes.draw do
    
  resources :products
  devise_for :users
  
root 'static_pages#main'    

  get '/main', to: 'static_pages#main'

  get '/catalog', to: 'static_pages#catalog'
  
  get '/profile', to: 'static_pages#profile'
  
  get 'users/:id' => 'users#show'
  
  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
