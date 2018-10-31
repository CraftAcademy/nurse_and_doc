Rails.application.routes.draw do
  devise_for :users
  scope '(:locale)', locale: /en|sv/ do
  end
end
