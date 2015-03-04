# The Search Controller is responsible for allowing users to search the site for profiles
class SearchController < ApplicationController
  def search
    @query = params[:q]
    params[:q] ? @profiles = Profile.search(params[:q]) : @profiles = []
  end
end
