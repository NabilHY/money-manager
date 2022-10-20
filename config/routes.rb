Rails.application.routes.draw do
  get 'groups/show'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :groups, only: [:index, :new, :create ] do
    resources :expenses, only: [:index, :new, :create]
  end
  get 'static_pages/splash_page'
  root 'static_pages#splash_page'
end
