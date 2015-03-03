class ProfilesController < ApplicationController

  # For profiles that need verification
  def unverified
    @profiles = Profile.where(:verified=>false)
  end

  def verify
    @profile = Profile.find(params[:id])
    @profile.verified = true
    @profile.save
    redirect_to :back
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, :verified,
      :job, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

end
