Rails.application.routes.draw do
  resources :reviews
  resources :tags
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
