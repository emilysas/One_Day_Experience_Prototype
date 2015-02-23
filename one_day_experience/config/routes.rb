Rails.application.routes.draw do

  resources :professions do
    devise_for :professionals
  end

  root to: 'application#index'

end
