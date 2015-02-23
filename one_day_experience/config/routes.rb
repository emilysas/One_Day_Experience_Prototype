Rails.application.routes.draw do

  resources :professions
  devise_for :professionals, :controllers => {:registrations => 'professionals'}
  
  root to: 'application#index'

end
