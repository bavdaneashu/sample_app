Rails.application.routes.draw do
   
  root  'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get  'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'edit' => 'users#edit'
  get 'show' => 'users#show'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users 
  

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Defines the root path route ("/")
  #root "static_pages/home"
end