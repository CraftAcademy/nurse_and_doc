Rails.application.routes.draw do
  get 'staffcos/index'
  root controller: :jobs, action: :index 
  root controller: :staffcos, action: :index 
  resources :hospitals, only: :index
  scope '(:locale)', locale: /en|sv/ do
  end
end
