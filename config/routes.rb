Rails.application.routes.draw do
  # root 'pages#index'
  namespace :api do
    namespace :v1 do
      # post 'login', to: "sessions#login"
      # post 'autologin', to: "sessions#autologin"
      get 'autologin', to: "sessions#autologin"
      # comment out autologin when assessment comes
      resources :users, only: [:create] # signup
      resources :sessions, only: [:create] #login
      resources :months, only: [:index, :show]
      resources :events #, only: [:index, :create, :destroy]
    end
  end

  # get '*path', to: 'pages#index', via: :all
  # routes requests arent for exiting requests for api back to index path

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
