Rails.application.routes.draw do
  scope '(:locale)', locale: /en|sv/ do
  end
end
