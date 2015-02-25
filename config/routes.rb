Rails.application.routes.draw do
  devise_for :students, :controllers => {:omniauth_callbacks => "students/omniauth_callbacks"}
  devise_for :professionals, :controllers => { :registrations => "registrations" }
  resources :professions
  resources :profiles
  root to: 'application#index'
  
  # api for serving index profile infos
  namespace :api do
    resources :profiles
  end

  # devise_scope :student do
    # get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_student_session
  # end
end
