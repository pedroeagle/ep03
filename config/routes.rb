Rails.application.routes.draw do
  get 'users/show', to: 'users#show'
  #resources :users
  root 'users#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
