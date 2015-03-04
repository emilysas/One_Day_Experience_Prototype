class ProfessionsController < ApplicationController
  def index
    @profiles = Profile.where(:verified=>false)
  end

  def show
    @profession = Profession.find(params[:id])
  end
end
