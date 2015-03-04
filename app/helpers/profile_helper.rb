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
	
end
