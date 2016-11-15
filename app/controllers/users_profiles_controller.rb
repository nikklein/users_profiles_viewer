class UsersProfilesController < ApplicationController
  def index
    @users = UserProfile.all
    render json: @users.to_json(only: [:username, :city, :country], methods: [:image_url])
  end
end
