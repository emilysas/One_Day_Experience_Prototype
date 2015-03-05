# The Search Controller is responsible for allowing users to search the site for profiles
class SearchController < ApplicationController
  def search
    @query = params[:q]
    @query ? @profiles = Profile.search(@query) : @profiles = []
    find_search_markers(@profiles)
  end

  def profile_verified
    possible_profile = Profile.find(params[:id])
    if possible_profile.verified
      @profile = possible_profile
      find_marker(@profile)
    else
      redirect_to '/'
      flash[:notice] = "This profile has not yet been verified"
    end
  end

  def map
    find_all_markers
  end

  def find_search_markers(results)
  	@hash = Gmaps4rails.build_markers(results) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.title profile.name
    end
  end

end