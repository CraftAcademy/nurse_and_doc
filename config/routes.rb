Rails.application.routes.draw do
  root controller: :users, action: :new 
  resources :users, only: [:create]
  devise_for :users
  scope '(:locale)', locale: /en|sv/ do
  end
end
