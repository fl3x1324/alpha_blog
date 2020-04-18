Rails.application.routes.draw do
  get 'home' => 'pages#home'
  get 'about' => 'pages#about'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
