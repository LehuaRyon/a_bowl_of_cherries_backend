Rails.application.routes.draw do
  # get 'sessions/login'
  # get 'sessions/autologin'
  # resources :users
  root 'pages#index'
  namespace :api do
    namespace :v1 do
      post '/login', to: "sessions#login"
      post '/autologin', to: "sessions#login"
      resources :users
      resources :months
      resources :events #, only: [:index, :create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
  # routes requests arent for exiting requests for api back to index path

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
