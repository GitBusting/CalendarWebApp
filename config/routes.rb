Rails.application.routes.draw do
  resources :appointments
  get 'welcome/index'
  resources :users
  root  'welcome#index'
end
