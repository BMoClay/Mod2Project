Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :comments, only: [:new, :show, :create, :destroy]
  resources :users, only: [:index, :new, :show, :create, :destroy]
  
  
end
