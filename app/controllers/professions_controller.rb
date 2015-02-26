class ProfessionsController < ApplicationController
  def index
    @professions = Profession.all
  end
end
