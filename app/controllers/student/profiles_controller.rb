class Student::ProfilesController < ApplicationController
  before_action :authenticate_student!
  
  def send_email
    @profile = Profile.find(params[:id])
    @professional = Professional.find(@profile.professional_id)
    @student = current_student
    post_email(@professional, @student)
    redirect_to profile_path(@profile.id)
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :image, :info, :company, :full_description, :work_address, :verified,
      :job, :motivation, :suitability, :academic_back, :req_quals, :req_skills, :expectations)
  end

  def post_email(professional, student)
    StudentMailer.intro_email(professional, student).deliver_now
    flash[:notice] = "Your email has been sent."
  end

end
