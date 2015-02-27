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
    @professional = Professional.where(:id=>@profile.professional_id)
    @student = current_student
  end

  def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, 
      :profession_id, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

  def index
    @profiles = Profile.all
  end

  def send_email
    @profile = Profile.find(params[:id])
    @professional = Professional.find(@profile.professional_id)
    @student = current_student

    StudentMailer.intro_email(@professional, @student).deliver
    flash[:notice] = "Your email has been sent."
    redirect_to profile_path(@profile.id)
  end

end
