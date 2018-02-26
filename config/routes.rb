Rails.application.routes.draw do
  root "welcome#index"
  get '/validate', to: "validate#index"

  namespace :api do
    namespace :v1 do
      get 'games/:id', to: 'games#show'
      post 'games/:id/plays', to: 'plays#create'
    end
  end
end
