Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create] do
    member do
      resources :bookmarks, only: [:new, :create, :index]
    end
  end

  resources :bookmarks, only: [:destroy]

end
