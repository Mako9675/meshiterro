Rails.application.routes.draw do
  
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users
  root to: 'homes#top'
  
  resources :users, only: [:show, :edit ,:update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
