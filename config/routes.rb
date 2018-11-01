Rails.application.routes.draw do
  get 'hospitals/index'
    scope '(:locale)', locale: /en|sv/ do
    root controller: :hospitals, action: :index
  end
end
