Rails.application.routes.draw do
  root to: 'stories#index'
  resources :stories
    resources :contributions
end
