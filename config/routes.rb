Rails.application.routes.draw do
  root to: 'maintenances#index'
  resources :maintenances, only: :index
end
