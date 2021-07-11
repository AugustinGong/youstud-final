Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations"}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  #dashboard
  get "/dashboard" => "users#index"
  get "user/:username" => "users#show", as: :profilo

  resources :books
  resources :users


  root to: "public#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
