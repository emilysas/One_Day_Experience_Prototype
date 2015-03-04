# The Profiles Controller is responsible for showing all of the professionals profiles to users who are not yet signed in
class ProfilesController < ApplicationController
 
  def index
    @profiles = Profile.where(:verified=>true)
    @result = @profiles.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name, :sector_id])
    respond_to do |format|
      format.html { 
        
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end

  def show
    profile_verified
  end

  # For profiles that need verification
  def verification
    @profiles = Profile.where(:verified=>false)
  end

  def verify
    @profile = Profile.find(params[:id])
    @profile.verified = true
    @profile.save
    redirect_to :back
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

end