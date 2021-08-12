Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :tweets, except: [:edit, :update] 
  resources :profiles, only: [:show, :edit, :update]

  post '/follow/:id', to: 'follows#create', as: 'follow'
  delete '/unfollow/:id', to: 'follows#destroy', as: 'unfollow'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tweets#index'
end
