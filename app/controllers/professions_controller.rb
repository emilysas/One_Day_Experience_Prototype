class ProfessionsController < ApplicationController
  def index
    @professions = Profession.all
  end

  def show
    @profession = Profession.find(params[:id])
  end
end
