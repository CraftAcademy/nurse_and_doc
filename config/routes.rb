Rails.application.routes.draw do
  root controller: :jobs, action: :index 
  resources :users, only: [:create, :new]
  resources :staffcos, only: :index
  resources :hospitals, only: :index
  devise_for :users, controllers: {
    registrations: :registrations,
    sessions: :sessions
  }
  scope '(:locale)', locale: /en|sv/ do
  end
end
