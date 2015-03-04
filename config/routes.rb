Rails.application.routes.draw do
  devise_for :admins
  devise_for :students, :controllers => {:omniauth_callbacks => "students/omniauth_callbacks"}
  devise_for :professionals, :controllers => { :registrations => "registrations" }

  root to: 'application#index'
  
  authenticated :professional do
    scope module: :professional do
      resource :profile, except: :index, as: 'my_profile'
    end
  end

  authenticated :student do
    scope module: :student do
      resources :profile, only: [] do
        member do
          get :send_email, to: 'profiles#send_email'
          post :favorite, to: 'profile_favorites#create'
          delete :favorite, to: 'profile_favorites#destroy'
        end
      end
      get :favorites, to: 'favorites#index'
    end
  end

  authenticated :admin do
    scope module: :admin do
      resources :profiles, only: [:show, :edit, :update] do
        collection do
          get :unverified, to: 'profiles#unverified'
        end
        member do
          post :verify, to: 'profiles#verify'
        end
      end
    end
  end

  resources :profiles, only: [:index, :show], constraints: { id: /\d+/ }

  get :sign_up_gate, to: 'application#sign_up_gate', as: :sign_up_gate
  get :sign_in_gate, to: 'application#sign_in_gate', as: :sign_in_gate

  get 'search', to: 'search#search'

end
