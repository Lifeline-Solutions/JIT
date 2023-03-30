Rails.application.routes.draw do
  resources :donations do
    resources :states 
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
  root "donations#index"

  resources :users, only: %i[index show]
end
