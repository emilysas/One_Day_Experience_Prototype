# The Profiles Controller is responsible for showing all of the professionals profiles to users who are not yet signed in
class ProfilesController < ApplicationController
 
  def index
    @profiles = Profile.where(:verified=>true)
    @result = Profile.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name])
    respond
  end

  def show
    @profile = Profile.find params[:id]
  end

  private

  def respond
    respond_to do |format|
      format.html { 
        
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end
  
end