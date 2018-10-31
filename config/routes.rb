Rails.application.routes.draw do
  root controller: :hospital, action: :index 
  scope '(:locale)', locale: /en|sv/ do
  end
end
