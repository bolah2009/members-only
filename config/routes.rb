# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'
  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  resources :posts, only: %i[new create index]
end
