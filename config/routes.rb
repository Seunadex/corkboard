# frozen_string_literal: true

Rails.application.routes.draw do
  resources :boards
  post 'boards/add_pin', to: 'boards#add_pin'
  resources :pins
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
