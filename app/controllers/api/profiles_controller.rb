class API::ProfilesController < ApplicationController
  # love me tender!
  # served at http://localhost:3000//api/profiles.json?page=1,2,3,etc..
  def index
    # paginating 3 profiles per page; 
    @result = Profile.paginate(:page => params[:page], :per_page => 3).select([:id, :name, :company, :info, :image_file_name])

    respond_to do |format|
      format.json { render :json => @result.as_json( :methods => [:image_url])  }
    end
  end
end
# URI.join(request.url, @model.attachment_name.url)
# or
# URI(request.url) + @model.attachment_name.url