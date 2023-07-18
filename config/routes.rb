Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :reviews, only: [:index, :show]
  end
  resources :reviews, only: [:index, :show, :create]
end
