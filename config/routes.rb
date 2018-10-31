Rails.application.routes.draw do
  root controller: :users, action: :index 
  resources :users, only: [:create, :new]
  devise_for :users
  scope '(:locale)', locale: /en|sv/ do
  end
end
