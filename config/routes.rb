Rails.application.routes.draw do
    scope '(:locale)', locale: /en|sv/ do
    root controller: :hospitals, action: :index
  end
end
