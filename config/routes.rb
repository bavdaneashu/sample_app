Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
   
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
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Defines the root path route ("/")
  #root "static_pages/home"
end