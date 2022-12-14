Rails.application.routes.draw do
  devise_for :users
  root({to: 'insects#index'})
  resources :insects do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookings, only: [:destroy, :index, :show, :update, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
