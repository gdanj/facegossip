Rails.application.routes.draw do
  resources :gossips do
  	resources :likes
  	resources :comments
  end
  root 'gossips#index'
  get  'registration/new' => 'registration#new'
  get  'registration/login' => 'registration#login'
  post 'registration/login' => 'registration#check'
  resources :registration
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
