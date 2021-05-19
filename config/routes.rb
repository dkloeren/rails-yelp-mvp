Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: [:show, :index, :new, :create] do
    resources :reviews, only: [:create]
  end
end
