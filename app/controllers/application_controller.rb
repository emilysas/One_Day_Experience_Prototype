# The Application Controller is responsible for determining the route taken after sign in
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @profile = Profile.first
  end

  def after_sign_in_path_for(resource)
    if current_professional
      my_profile_path
    elsif current_admin
      unverified_profiles_path
    else
      root_path
    end
  end

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name
   devise_parameter_sanitizer.for(:sign_up) << :profession_id
 end

end
