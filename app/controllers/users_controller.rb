class UsersController < ApplicationController

  def index
    @key = ENV["GOOGLE_API_KEY"]
    @zip = params[:zipsearch]
  end

end
