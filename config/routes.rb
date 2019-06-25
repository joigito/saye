Rails.application.routes.draw do
  resources :jobs
  get 'welcome/index'
  root 'welcome#index'
  resources :clients
  resources :stocks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
