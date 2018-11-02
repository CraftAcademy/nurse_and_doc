Rails.application.routes.draw do
  root controller: :jobs, action: :index 
  resources :staffcos, only: :index
  resources :hospitals, only: :index
  scope '(:locale)', locale: /en|sv/ do
  end
end
