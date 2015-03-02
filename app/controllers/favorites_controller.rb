# controller for showing all of the student's favorite profiles
class FavoritesController < ApplicationController
  def show
    @profiles = current_student.favorite_profiles
  end
end