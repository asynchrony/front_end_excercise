class ProfilesController < ApplicationController
  respond_to :html

  expose(:profile)
  expose(:profiles) { Profile.all }

  def show
    respond_with profile
  end

  def index
    respond_with profiles
  end

  def create
    new_profile = Profile.new profile_params
    if new_profile.save
      redirect_to profile_path(new_profile.id)
    else
      respond_with new_profile
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :email, :gender, :income, :date_of_birth)
  end
end
