# The Admin Profiles Controller is responsible for allowing an admin user to verify profiles
class Admin::ProfilesController < ApplicationController

  before_action :authenticate_admin!

  def unverified
    @profiles = Profile.where(:verified=>false)
  end

  def verify
    @profile = Profile.find(params[:id])
    @profile.verified = true
    @profile.save
    redirect_to :back
  end

end
