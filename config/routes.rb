Rails.application.routes.draw do

  devise_for :students
  resources :professions
  devise_for :professionals
  # , :controllers => { registrations: 'registrations' }

  
  root to: 'application#index'

end
