Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'autologin', to: "sessions#autologin"
      resources :users, only: [:create] # signup
      resources :sessions, only: [:create] #login
      resources :months, only: [:index, :show] do
        resources :events, only: [:create, :update, :destroy]
      end
    end
  end
end
