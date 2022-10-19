Rails.application.routes.draw do
  get 'groups/show'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :groups, only: [:index, :new, :destroy ] do
    resources :expenses, only: [:index, :new, :destroy]
  end
  get 'static_pages/splash_page'
  get 'static_pages/dashboard'
  root 'static_pages#splash_page'
end
