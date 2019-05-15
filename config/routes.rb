Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show edit update destroy]
end
