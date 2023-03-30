Rails.application.routes.draw do
  devise_for :users
  root "users#splash"
  # devise_scope :user do
  #   authenticated :user do
  #     root "users#index", as: :authenticated_root
  #   end
  #   unauthenticated :user do
  #     root "users#splash", as: :unauthenticated_root
  #   end
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: %i[index show]
end
