# The Profiles Controller is responsible for showing all of the professionals profiles to users who are not yet signed in
require 'profile_helper'
class ProfilesController < ApplicationController
 
  include ProfileHelper

  def index
    @profiles = Profile.where(:verified=>true)
    @result = @profiles.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :job, :image_file_name, :sector_id])
    find_all_markers
    respond
  end

  def respond
    respond_to do |format|
      format.html { 
       }
       format.json {
         render :json => @result.as_json( :methods => [:image_url])  
       }
    end
  end

  def show

    profile_verified
    find_marker(@profile)
    @visit = Visit.new
  end

  def map
    find_all_markers
  end

end