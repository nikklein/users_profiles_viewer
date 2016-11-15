class UsersProfilesController < ApplicationController
  def index
    @users = UserProfile.all
  end
end
