# The Visits Controller is responsible for arranging a time that a student can visit a professional
class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def new
    @visit = Visit.new
    @professional = params[:profile_id]
    @student = params[:student_id]
  end

  def create
    @temp = params[:visit];
    @id = @temp[:profile_id]
    @visit = Visit.create(student_id: @temp[:student_id], profile_id: @id, date: @temp[:date], status: @temp[:status]);
    redirect_to "/profiles/#{@id}"
  end

  def show
    @visits = Visit.where(:profile_id => params[:id])
  end

  def edit
  end
end