Rails.application.routes.draw do
  resources :posts
  resources :api_tokens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api_tokens#index"

  namespace :api do
    namespace :v1 do
      defaults format: :json do
        resources :posts, only: %i[index create show update destroy]
      end
    end
  end
end
