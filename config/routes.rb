Rails.application.routes.draw do
  root "sessions#new"
  get "/show", to: "secrets#show"
  get "/new", to: "sessions#new"
  get "/homepage", to: "sessions#homepage"
  post "/create", to: "sessions#create"
  delete "/destroy", to: "sessions#destroy"
end
