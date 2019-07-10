# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  # resources :users
  resources :posts, only: %i[new create index]
end
