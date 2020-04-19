Rails.application.routes.draw do
  get "home" => "pages#home"
  get "about" => "pages#about"
  resources :articles, only: %i[show index new create]
  root "pages#home"
end
