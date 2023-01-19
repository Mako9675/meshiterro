Rails.application.routes.draw do
  
  resources :users, only: [:show, :edit ,:update]
  
  devise_for :users ,path: 'user'
  root to: 'homes#top'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get "/homes/about" => "homes#about", as: "about"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
