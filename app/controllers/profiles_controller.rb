class ProfilesController < ApplicationController
 
  def index
    @profiles = Profile.all
    @result = Profile.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :profession_id, :image_file_name])
    respond_to do |format|
      format.html { 
        
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end

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
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, 
      :profession_id, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

end
