Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :genres
  end
end
