Rails.application.routes.draw do
  root to: 'properties#index'
  get 'properties', to: 'properties#index'
  get 'stats', to: 'stats#index'
end
