class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
  	@professionals = Professional.all
  	@professional = @professionals.sample
    @profile = Profile.first
  end

  def sign_up_gate

  end

  def sign_in_gate

  end

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name
   devise_parameter_sanitizer.for(:sign_up) << :profession_id
 end

end
