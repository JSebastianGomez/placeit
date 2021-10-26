Rails.application.routes.draw do
  resources :reservas
  root "peliculas#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :peliculas do
    resources :funcions
  end
end
