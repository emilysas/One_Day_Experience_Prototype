class ProfilesController < ApplicationController
 
  def index
    @profiles = Profile.all
    @result = Profile.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name])
    respond_to do |format|
      format.html { 
        
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end

  def show
    @profile = Profile.find params[:id]
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
  
  def send_email
    @profile = Profile.find(params[:id])
    @professional = Professional.find(@profile.professional_id)
    @student = current_student

    StudentMailer.intro_email(@professional, @student).deliver
    flash[:notice] = "Your email has been sent."
    redirect_to profile_path(@profile.id)
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, :verified,
      :job, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

end
