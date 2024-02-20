Rails.application.routes.draw do
  root 'eventos#index'
  resources :anotacaos
  resources :eventos
  get 'about/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
