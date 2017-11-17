Rails.application.routes.draw do
    
root 'static_pages#main'     
  get '/main', to: 'static_pages#main'

  get '/catalog', to: 'static_pages#catalog'
  
  get '/login', to: 'static_pages#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
