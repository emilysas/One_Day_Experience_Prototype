Rails.application.routes.draw do

  resources :professions
  devise_for :professionals
  # , :controllers => { registrations: 'registrations' }

  
  root to: 'application#index'

end
