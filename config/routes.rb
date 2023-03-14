Rails.application.routes.draw do
  resources :posts
  resources :api_tokens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api_tokens#index"
end
