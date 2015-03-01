class SearchController < ApplicationController
  def search
    @query = params[:q]
    if params[:q].nil? 
      @profiles = []
    else
      @profiles = Profile.search(params[:q])
    end

  end
end
