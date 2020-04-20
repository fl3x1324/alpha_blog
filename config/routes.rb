# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home' => 'pages#home'
  get 'about' => 'pages#about'
  resources :articles
  root 'pages#home'
end
