Rails.application.routes.draw do
  devise_for :students, :controllers => {:omniauth_callbacks => "students/omniauth_callbacks"}
  devise_for :professionals, :controllers => { :registrations => "registrations" }


  # resources :professions
  
  resources :profiles, only: [:index, :show]
  
  authenticated :professional do
    scope module: :professional do
      resource :profile, except: :index
    end
  end

  root to: 'application#index'
  
  # api for serving index profile infos
  # resources :profiles
  
  # Student can add favorite profiles feature
  resources :favorite_profiles, only: [:create, :destroy]
  get 'favorites', to: 'favorites#show'

  authenticated :student do
    get :send_email, to: 'profiles#send_email', as: :send_email
  end

  get :sign_up_gate, to: 'application#sign_up_gate', as: :sign_up_gate
  get :sign_in_gate, to: 'application#sign_in_gate', as: :sign_in_gate

  get 'search', to: 'search#search'

  # TODO: what is this for? still needed? 
  # devise_scope :student do
    # get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_student_session
  # end
end
