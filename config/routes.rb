Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  get ':id/edit', to: 'users#edit'
  patch ':id/edit', to: 'users#update'
end
