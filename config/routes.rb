Rails.application.routes.draw do
  get 'like/new'
  resources :gossips
  root 'gossips#index'
  get 'registration/new' => 'registration#new'
  get 'registration/login' => 'registration#login'
  post 'registration/login' => 'registration#check'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
