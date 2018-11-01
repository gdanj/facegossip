Rails.application.routes.draw do
  resource :gossips
  root 'gossips#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
