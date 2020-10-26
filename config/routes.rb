Rails.application.routes.draw do
  resources :realtors do
    resources :properties
  end
end
