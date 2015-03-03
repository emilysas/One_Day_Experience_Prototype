class SearchController < ApplicationController
  def search
    @query = params[:q]
    params[:q] ? @profiles = Profile.search(params[:q]) : @profiles = []
  end
end
