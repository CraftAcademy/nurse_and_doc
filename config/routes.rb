Rails.application.routes.draw do
  root controller: :jobs, action: :index 
  scope '(:locale)', locale: /en|sv/ do
  end
end
