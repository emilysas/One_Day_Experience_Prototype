Rails.application.routes.draw do
  devise_for :students, :controllers => {:omniauth_callbacks => "students/omniauth_callbacks"}
  devise_for :professionals, :controllers => { :registrations => "registrations" }

  root to: 'application#index'
  
  resources :profiles, only: [:index, :show]
  
  authenticated :professional do
    scope module: :professional do
      resource :profile, except: :index, as: 'my_profile'
    end
  end

  authenticated :student do
    get :send_email, to: 'profiles#send_email', as: :send_email
  end

  # Student can add favorite profiles feature
  resources :favorite_profiles, only: [:create, :destroy]
  get 'favorites', to: 'favorites#show'

  get :sign_up_gate, to: 'application#sign_up_gate', as: :sign_up_gate
  get :sign_in_gate, to: 'application#sign_in_gate', as: :sign_in_gate

  get 'search', to: 'search#search'

end
