Rails.application.routes.draw do
  get 'staffcos/index'
  root controller: :jobs, action: :index 
  resources controller: :staffcos, only: :index
  resources :hospitals, only: :index
  scope '(:locale)', locale: /en|sv/ do
  end
end
