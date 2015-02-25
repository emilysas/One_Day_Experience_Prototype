class API::ProfilesController < ApplicationController
  # love me tender!
  # http://localhost:3000//api/profiles.json
  def index
    
    @result = Profile.all.select([:name, :id, :image_file_name])
    # @profiles = Profile.all

    respond_to do |format|
      format.json { render :json => @result }
      # format.json { render :json => { 
        # :profile => @profiles.as_json(:only => [:name], :methods => [:image_url]) } 
      # }
    end
  end
end
# use profiles all for getting the image_url - I think only local value