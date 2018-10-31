Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  devise_for :users
  scope '(:locale)', locale: /en|sv/ do
  end
end
