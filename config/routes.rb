Rails.application.routes.draw do
  get 'staffcos/index'
  root controller: :jobs, action: :index 
  scope '(:locale)', locale: /en|sv/ do
  end
end
