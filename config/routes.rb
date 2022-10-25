Rails.application.routes.draw do


  devise_for :users

  root to: "pages#home"

  # get 'fishing_spots/index'
  # get 'fishing_spots/show'
  # get 'hints/index'
  resources :fishing_spots, only: [:index, :show] do
    resources :hints, only: [:index]
    resources :discussions, only:[:index, :create] do
    end
  end
resources :discussions, only:[:show, :destroy] do
  resources :replies, only:[:create, :destroy]
end  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
