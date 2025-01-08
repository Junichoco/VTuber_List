Rails.application.routes.draw do
  devise_for :users
  # , controllers: {
  #   registrations: "registrations",
  #   sessions: "sessions"
  # }
  root to: "pages#home"
  get 'home', to: 'pages#home', as: :home
  get "about", to: "pages#about", as: :about
  get "random", to: "pages#random", as: :random
  patch "home/reorder", to: "users#reorder", as: :reorder
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users do
    # patch "reorder", to: "users#reorder", as: :reorder
  end
  resources :vtubers do
    # patch :add_tag
  end
  patch "vtubers/:id/edit/add_tag", to: "vtubers#add_tag", as: :add_tag
  patch "vtubers/:id/edit/remove_tag", to: "vtubers#remove_tag", as: :remove_tag
  # resources :lists do
  #  resources :vtuber_markers, only: [:new, :create, :destroy]
  # end
  resources :lists do
    # get "reorder", to: "lists#reorder", as: :reorder
  end
  patch "lists/:id/sort", to: "lists#sort", as: :sort
  # patch "lists/:list_id/sort", to: "lists#sort", as: :list_id_sort

  resources :vtuber_markers do
    # patch "lists/:list_id/insert", to: "vtuber_markers#insert", as: :insert
  end
  resources :agencies

  # resources :vtuber_markers
  resources :list_markers
  resources :tags

end
