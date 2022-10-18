Rails.application.routes.draw do

  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  resources :posts, except: :show

  devise_for :users

  root to: "pages#home"

  # get 'fishing_spots/index'
  # get 'fishing_spots/show'
  # get 'hints/index'
  resources :fishing_spots, only: [:index, :show] do
    resources :hints, only: [:index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
