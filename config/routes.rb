Rails.application.routes.draw do
  root 'application#index'
  resources :realtors do
    resources :properties
  end
end
