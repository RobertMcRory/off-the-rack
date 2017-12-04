Rails.application.routes.draw do
    
  resources :categories
  get 'cart/index'

  resources :products
  resources :users
  devise_for :users
  
root 'static_pages#main'    

  get '/main', to: 'static_pages#main'

  get '/products', to: 'products#index'
  
  get '/profile', to: 'static_pages#profile'
  
  get 'users/:id' => 'users#show'
  
  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'
  
  get '/cart', to: 'cart#index'
  
  get '/cart/clear', to: 'cart#clearCart'
  
  get 'cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id', to: 'cart#remove'
  
  get '/admin', to: 'static_pages#admin'
  
  get '/category/:title', to: 'static_pages#category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
