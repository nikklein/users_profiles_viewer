class UsersProfilesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @users = UserProfile.all
    render json: @users.to_json(only: [:username, :city, :country], methods: [:image_url])
  end
end
