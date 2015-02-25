class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
    @profile.update(professional_id: current_professional.id)
    redirect_to '/'
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :info, :company, :full_description, :work_address, :profession_id)
  end
end
