# The Profiles Controller is responsible for showing all of the professionals profiles to users who are not yet signed in

class ProfilesController < ProfilesBaseController

  def index
    @profiles = Profile.where(:verified=>true)
    @result = @profiles.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name, :sector_id])
    find_all_markers(@profiles)
    respond
  end

  def respond
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
    @visit = Visit.new
  end

end