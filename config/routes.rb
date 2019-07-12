Rails.application.routes.draw do
  resources :notes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'notes#index'

  resources :tags, only: [:show]
end
