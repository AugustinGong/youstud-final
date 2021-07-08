Rails.application.routes.draw do
  devise_for :users

  #dashboard
  get "/dashboard" => "users#index"
  get "user/:username" => "users#show", as: :profilo

  resources :books, only: [:new, :create, :show]

  root to: "public#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
