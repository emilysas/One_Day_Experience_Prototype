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
    @v = params[:visit];
    @visit = Visit.create(student_id: @v[:student_id], profile_id: @v[:profile_id], date: @v[:date], status: @v[:status]);
    redirect_to "/profiles/#{@v[:profile_id]}"
  end

  def show
    @visits = Visit.where(:profile_id => params[:id])
  end

  def edit
  end
end