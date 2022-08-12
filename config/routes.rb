Rails.application.routes.draw do
  resources :purchases, only: %i[new create]
  resources :groups, only: %i[index new show create]
  devise_for :users

  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
