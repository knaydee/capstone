class UsersController < ApplicationController

  def index
    @key = ENV["GOOGLE_API_KEY"]
    @map = HTTParty.get("https://www.google.com/maps/embed/v1/search?key=#{@key}")
  end

end
