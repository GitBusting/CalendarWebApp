Rails.application.routes.draw do
  get 'appointments/calendar'
  resources :appointments
  get 'welcome/index'
  resources :users
  root  'welcome#index'
end
