class ProfilesController < ApplicationController
  respond_to :html

#  expose(:profile)
  expose(:profiles) { Profile.all }

  def new
    @profile = Profile.new(location: Location.new)
    respond_with @profile
  end

  def show
    @profile = Profile.find(params[:id])
    respond_with @profile
  end

  def index
    respond_with profiles
  end

  def create
    new_profile = Profile.new params[:profile]
    if new_profile.save
      redirect_to profile_path(new_profile.id)
    else
      respond_with new_profile
    end
  end
end
