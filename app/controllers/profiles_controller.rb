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

  def edit
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
  end

  def delete
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to '/'
  end

  def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, 
      :profession_id, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

  def index
    @profiles = Profile.all
  end

end
