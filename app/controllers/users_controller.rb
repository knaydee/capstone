class UsersController < ApplicationController

  def index
    @key = ENV["GOOGLE_API_KEY"]
    @zip = params[:termsearch]
    @map = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=veterinar+near+98103&key=#{@key}"
    @data = HTTParty.get(@map)
  end

end
