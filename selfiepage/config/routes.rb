Rails.application.routes.draw do
  resources :selfies
  root 'selfies#index'
end
