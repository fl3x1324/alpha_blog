# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  resources :articles
  resources :users, except: [:new]
  get 'signup' => 'users#new'
  get 'home' => 'pages#home'
  get 'about' => 'pages#about'
end
