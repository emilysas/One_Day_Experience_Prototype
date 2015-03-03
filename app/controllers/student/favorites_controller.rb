# controller for showing all of the student's favorite profiles
class FavoritesController < ApplicationController
  before_action :authenticate_student!
  def index
    @profiles = current_student.favorite_profiles
  end
  
end