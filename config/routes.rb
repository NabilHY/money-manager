Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'static_pages/splash_page'
  get 'static_pages/dashboard'
  root 'static_pages#splash_page'
end
