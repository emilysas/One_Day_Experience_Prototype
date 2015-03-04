# The Profiles Controller is responsible for showing all of the professionals profiles to users who are not yet signed in
class ProfilesController < ApplicationController
 
  def index
    @profiles = Profile.where(:verified=>true)
    @result = @profiles.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name])
    respond_to do |format|
      format.html { 
        
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end

  def show
    profile = profile_verified
    find_marker(profile)
  end

  def map
    find_all_markers
  end

private

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
    @profiles = Profile.all
    @hash = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.title profile.name
    end
  end
end