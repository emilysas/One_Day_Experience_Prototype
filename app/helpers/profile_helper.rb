module ProfileHelper

	def profile_verified
    possible_profile = Profile.find(params[:id])
    if possible_profile.verified
      @profile = possible_profile
    else
      redirect_to '/'
      flash[:notice] = "This profile has not yet been verified"
    end
  end  

  def find_marker(profile)
    @hash = Gmaps4rails.build_markers(profile) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.title profile.name
    end
  end

  def find_all_markers
    @profiles = Profile.where(:verified=>true)
    @hash = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.title profile.name
    end
  end

	def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :address, :verified,
      :job, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end
end
