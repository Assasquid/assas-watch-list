Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: :list

  resources :lists, except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
