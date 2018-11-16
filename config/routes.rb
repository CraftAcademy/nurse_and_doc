Rails.application.routes.draw do

  scope '(:locale)', locale: /en|sv/ do
    devise_for :users, path: :authentication, controllers: {
      registrations: :registrations,
      sessions: :sessions, 
      invitations: :invitations
    }
    root controller: :jobs, action: :index
    resources :jobs, only: [:new, :create, :destroy]
    resources :invitations, only: [:create, :new]
    resources :staffcos, only: [:create, :index, :new, :destroy]
    resources :hospitals, only: [:index, :create, :new, :destroy]
    resources :regions, only: [:create, :new]
  end
end
