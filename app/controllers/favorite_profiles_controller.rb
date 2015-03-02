class FavoriteProfilesController < ApplicationController
  before_action :set_profile
  
  def create
    if Favorite.create(favorited: @profile, student: current_student)
      redirect_to @profile, notice: 'Profile has been favorited'
    else
      redirect_to @profile, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @profile.id, student_id: current_student.id).first.destroy
    redirect_to @profile, notice: 'Profile is no longer in favorites'
  end
  
  private
  
  def set_profile
    @profile = Profile.find(params[:profile_id] || params[:id])
  end
end