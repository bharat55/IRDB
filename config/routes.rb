Rails.application.routes.draw do
  namespace :admin do
      resources :books
      resources :reviews
      resources :stores
      resources :users

      root to: "books#index"
    end
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  devise_for :users
  root 'home#index'
end
