Rails.application.routes.draw do
  resources :messages, only: [:index, :create, :delete]
  root to: 'messages#index'
end
