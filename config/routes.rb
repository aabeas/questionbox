Rails.application.routes.draw do


  get "sign_in" => 'sessions#new', as: :sign_in
  post "sign_in" => 'sessions#create'
  delete "sign_in" => 'sessions#delete', as: :sign_out

  get "/users/new" => 'users#new', as: :sign_up
  post "/users" => 'users#create', as: :users


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
