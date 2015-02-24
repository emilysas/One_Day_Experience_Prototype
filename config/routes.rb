Rails.application.routes.draw do
  devise_for :students, :controllers => {:omniauth_callbacks => "students/omniauth_callbacks"}
  devise_for :professionals
  resources :professions
  root to: 'application#index'

  # devise_scope :student do
    # get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_student_session
  # end
end
