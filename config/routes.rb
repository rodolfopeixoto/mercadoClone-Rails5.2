Rails.application.routes.draw do
  namespace :site do
    get 'site', to: 'home#index'
  end
  namespace :backoffice do 
    resources :categories, except: [:show, :destroy]
    resources :admins, except: [:show]
    get 'dashboard', to: 'dashboard#index'
  end

  get 'admin', to: 'backoffice/dashboard#index'
  
  devise_for :admins, skip: [:registrations]
  devise_for :members
  
  root 'site/home#index'
end