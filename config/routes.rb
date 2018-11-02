Rails.application.routes.draw do
  root controller: :users, action: :index 
    resources :users, only: [:create, :new]
  devise_for :users
  
  root controller: :jobs, action: :index 
    resources :hospitals, only: :index
  scope '(:locale)', locale: /en|sv/ do
  end
end
