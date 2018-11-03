Rails.application.routes.draw do

  scope '(:locale)', locale: /en|sv/ do
    devise_for :users, path: :authentication, controllers: {
      registrations: :registrations,
      sessions: :sessions
    }
    root controller: :jobs, action: :index 
    resources :users, only: [:create, :new]
    resources :staffcos, only: :index
    resources :hospitals, only: [:create, :show, :new, :update]
  end
end
